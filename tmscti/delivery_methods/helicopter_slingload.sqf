/*
This script is to be run on the server side only.

This will start the delivery of ordered items to a supply location via helicopter slingload.
Usually called from callsuply.sqf

Parameters:

0: Class name of the helicopter to use
1: Variable name of the supply location to deliver to
2: List of items to deliver
*/

_helicopter_classname = _this select 0;
_supply_location_var = _this select 1;
_items = _this select 2;

_supply_location = call compile _supply_location_var;
_droppoint_marker = (_supply_location select tms_sl_cols_delivery_positions) select 3;
systemChat format ["droppoint marker: %1", _droppoint_marker];
_droppoint_pos = getmarkerpos _droppoint_marker;

_spawnpos = getmarkerpos "sp_e"; // TODO Get fitting spawn position

// Create the helicopter and its cargo
_helicopter = createVehicle [_helicopter_classname, _spawnpos, [], 0, "FLY"];
createVehicleCrew (_helicopter);
_helicopter setPosASL [_spawnpos select 0, _spawnpos select 1, 200];

_box_created = false;
_item_class_name = "";

for "_i" from 0 to ((count _items) - 1) do {
	_item_data_var = _items select _i;
	_item_data = call compile _item_data_var;
	_item_type = _item_data select 7;

	if(_item_type == "gear") then {
		if(_box_created == false) then {
			_cargobox = createVehicle ["B_supplyCrate_F", _spawnpos, [], 0, "NONE"];
			_box_created = true;
			_helicopter setSlingLoad _cargobox;
			};

		clearItemCargoGlobal _cargobox;
		clearMagazineCargoGlobal _cargobox;
		clearWeaponCargoGlobal _cargobox;
		clearBackpackCargoGlobal _cargobox;

		_item_class_name = _item_data select 1;

		if (isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
			if (getNumber(configFile >> "CfgWeapons" >> _item_class_name >> "type") in [1, 2, 4]) then {
				_cargobox addWeaponCargoGlobal [_item_class_name, 1];
				}
			else {
				_cargobox addItemCargoGlobal [_item_class_name, 1];
				};
			}
		else {
			if (isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
				_cargobox addMagazineCargoGlobal [_item_class_name, 1];
				}
			else {
				_cargobox addItemCargoGlobal [_item_class_name, 1];
				};
			};

		}
	else {
		_item_class_name = _item_data select 1;
		_cargo = _item_class_name createVehicle getmarkerpos "vehiclespawn";
		_cargo setPosASL [_spawnpos select 0, _spawnpos select 1, 195];

		// For basecontainers and other offcially "not slingloadable" objects:
		if(_item_class_name == "Land_Cargo20_military_green_F") then {
			_cargo setMass [5000, 0];

			containerrope1 = ropeCreate [_helicopter, "slingload0", _cargo, [0, 1.0, 1], 10];
			containerrope2 = ropeCreate [_helicopter, "slingload0", _cargo, [0, -1.0, 1], 10];
			containerrope3 = ropeCreate [_helicopter, "slingload0", _cargo, [3.0, 0, 1], 10];
			containerrope4 = ropeCreate [_helicopter, "slingload0", _cargo, [-3.0, 0, 1], 10];
			}
		else {
			_helicopter setSlingLoad _cargo;
			};
		};
	};

_helicopter setVehicleLock "LOCKED";

_group = group _helicopter;
_group setBehaviour "CARELESS";

// Set an interim waypoint 800 meters before the drop point, to allow the helicopter to slow down
_direction = [_droppoint_pos, _spawnpos] call BIS_fnc_dirTo;
_additional_wp_pos = [_droppoint_pos, 800, _direction] call BIS_fnc_relPos;  // 800 meters from the droppoint in the direction of the spawnpoint
_wp1 =_group addWaypoint [_additional_wp_pos, 0]; //Interimpoint
_wp1 setWaypointType "MOVE";
_wp1 setWaypointCompletionRadius 0;
_wp1 setWaypointSpeed "FULL";
_wp1 setWaypointStatements ["true", "vehicle this flyinheight 13;"];

_wp2 =_group addWaypoint [_droppoint_pos, 0];
_wp2 setWaypointType "MOVE";
_wp2 setWaypointCompletionRadius 0.1;
_wp2 setWaypointSpeed "LIMITED";
_wp2 setWaypointTimeout [12, 13, 14];
// TODO Actually make this work again, more generic solution
if(_item_class_name == "Land_Cargo20_military_green_F") then {
	_wp2 setWaypointStatements ["true", "vehicle this flyinheight 15; ropeDestroy containerrope1; ropeDestroy containerrope2; ropeDestroy containerrope3; ropeDestroy containerrope4; hint 'Your supply has arrived';"];
	}
else {
	_wp2 setWaypointStatements ["true", "[vehicle this, getMarkerPos 'sp_e'] execVM 'tmscti\drop_slingload_cargo_and_rtb.sqf';"];
	};
