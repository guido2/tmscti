/*
This script is to be run on the server side only.

This will start the delivery of ordered items to a supply location via a cargo plane.
Usually called from callsuply.sqf

Parameters:

0: Class name of the airplane to use
1: Variable name of the supply location to deliver to
2: List of items to deliver
*/
_plane_classname = _this select 0;
_supply_location_var = _this select 1;
_items = _this select 2;
_plane_info = _this select 3;

_supply_location = call compile _supply_location_var;

_transport_capacity = _plane_info select 0;
_cargo_load_function = call compile (_plane_info select 1);

_spawnpos = getmarkerpos "sp_e"; // TODO Get fitting spawn position

_cargobox = false;

_airplane = createVehicle [_plane_classname, _spawnpos, [], 0, "FLY"];
createVehicleCrew (_airplane);

for "_i" from 0 to ((count _items) - 1) do {
	_item_data_var = _items select _i;
	_item_data = call compile _item_data_var;
	_item_type = _item_data select 7;
	_item_class_name = _item_data select 1;

	if(_item_type == "gear") then {
		if(_cargobox isEqualTo false) then {
			_cargobox = createVehicle ["B_supplyCrate_F", _spawnpos, [], 0, "NONE"];
			clearItemCargoGlobal _cargobox;
			clearMagazineCargoGlobal _cargobox;
			clearWeaponCargoGlobal _cargobox;
			clearBackpackCargoGlobal  _cargobox;
			[_airplane, _cargobox] call _cargo_load_function;
			};

		// If the current box is full
		if(not (_cargobox canAdd _item_class_name)) then {
			// Create and load a new one
			_cargobox = createVehicle ["B_supplyCrate_F", _spawnpos, [], 0, "NONE"];
			clearItemCargoGlobal _cargobox;
			clearMagazineCargoGlobal _cargobox;
			clearWeaponCargoGlobal _cargobox;
			clearBackpackCargoGlobal _cargobox;
			[_airplane, _cargobox] call _cargo_load_function;
			};

		// TODO: Make a global function out of this, use that everywhere items are added to a box
		if(isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
			if (getNumber(configFile >> "CfgWeapons" >> _item_class_name >> "type") in [1, 2, 4]) then {
				_cargobox addWeaponCargoGlobal [_item_class_name, 1];
				}
			else {
				_cargobox addItemCargoGlobal [_item_class_name, 1];
				};
			}
		else {
			if(isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
				_cargobox addMagazineCargoGlobal [_item_class_name, 1];
				}
			else {
				_cargobox addItemCargoGlobal [_item_class_name, 1];
				};
			};
		}
	// vehicle
	else {
		_vehicle = _item_class_name createVehicle getmarkerpos "vehiclespawn";
		_vehicle setPosASL [_spawnpos select 0, _spawnpos select 1, 195];
		[_airplane, _vehicle] call _cargo_load_function;
		};
	};

_airplane setVehicleLock "LOCKED";
_group = group _airplane;
_group setBehaviour "CARELESS";

_airplane landAt (_supply_location select tms_sl_cols_airstrip_id);

// Send a warning to the team
_message = format ["Transport airplane approaching %1, clear runway!",  _supply_location select tms_sl_cols_display_name];
[[(driver _airplane), _message], "sideChat", west, false, false] call BIS_fnc_MP;

_airplane setVariable ["return_pos", _spawnpos];

_airplane addEventHandler ["LandedStopped", {
	hint "Your supply has arrived";
	{deleteVehicle _x} forEach crew (_this select 0);
	(_this select 0) addAction ["<t color='#FFFF00'>Return airplane to home base</t>", {
		_airplane = _this select 0;
		_return_pos = _airplane getVariable "return_pos";
		createVehicleCrew _airplane;
		_airplane animate ["back_ramp", 0];
		_airplane animate ["back_ramp_st", 0];
		_airplane animate ["back_ramp_p", 0];
		_airplane animate ["back_ramp_p_2", 0];
		_airplane animate ["back_ramp_door_main", 0];

		[[(driver _airplane), "Transport airplane returning to base - clear taxi- and runway!"], "sideChat", west, false, false] call BIS_fnc_MP;
		_group = group _airplane;
		_wp0 =_group addWaypoint [_return_pos, 0];
		_wp0 setWaypointType "MOVE";
		_wp0 setWaypointSpeed "FULL";
		_wp0 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
		}];
	}];
