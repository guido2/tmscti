hint "Your selected supply is on the way";

_chosencraft = lbCurSel 2100;
_transportcraft = lbData [2100, _chosencraft];

hint format ["Index: %1" ,_transportcraft];

if (_transportcraft == "CH-47 Chinook") then {
    if (lbSize 1507 == 1) then {
        _droppoint_pos = getmarkerpos "hqdrop1"; // TODO: Get the correct droppoint
        _spawnpos = getmarkerpos "sp_e";

        _supply_item_data_string = lbData [1507, 0];
        _supply_item_data = call compile _supply_item_data_string;

        // Create the helicopter and its cargo
        _CH47F = createVehicle ["B_Heli_Transport_03_F", _spawnpos, [], 0, "FLY"];
        createVehicleCrew (_CH47F);
        _CH47F setPosASL [_spawnpos select 0, _spawnpos select 1, 200];
        _cargo_classname = _supply_item_data select 1;
        _cargo = _cargo_classname createVehicle getmarkerpos "vehiclespawn";
        _cargo setPosASL [_spawnpos select 0, _spawnpos select 1, 195];

        // For basecontainers and other offcially "not slingloadable" objects:
        if(_cargo_classname == "Land_Cargo20_military_green_F") then {
            systemChat "Setting mass";
            _cargo setMass [5000, 0];

            containerrope1 = ropeCreate [_CH47F, "slingload0", _cargo, [0, 1.0, 1], 10];
            containerrope2 = ropeCreate [_CH47F, "slingload0", _cargo, [0, -1.0, 1], 10];
            containerrope3 = ropeCreate [_CH47F, "slingload0", _cargo, [3.0, 0, 1], 10];
            containerrope4 = ropeCreate [_CH47F, "slingload0", _cargo, [-3.0, 0, 1], 10];
            }
        else {
            systemChat "Attaching slingload";
            _CH47F setSlingLoad _cargo;
            };

        _CH47F setVehicleLock "LOCKED";

        _group = group _CH47F;

        // Set an interim waypoint 800 meters before the drop point, to allow the helicopter to slow down
        _direction = [_droppoint_pos, _spawnpos] call BIS_fnc_dirTo;
        _additional_wp_pos = [_droppoint_pos, 800, _direction] call BIS_fnc_relPos;
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
        if(_cargo_classname == "Land_Cargo20_military_green_F") then {
            _wp2 setWaypointStatements ["true", "vehicle this flyinheight 15; ropeDestroy containerrope1; ropeDestroy containerrope2; ropeDestroy containerrope3; ropeDestroy containerrope4; hint 'Your supply has arrived';"];
            }
        else {
            _wp2 setWaypointStatements ["true", "[vehicle this, getMarkerPos 'sp_e'] execVM 'tmscti\drop_slingload_cargo_and_rtb.sqf';"];
            };
        }
    else {
        systemChat "CH-47 Chinook (slingload) can only deliver exactly one item";
        };
	};

if (_transportcraft == "C-17 Globemaster III") then {
    _transC17 = createVehicle ["USAF_C17", getMarkerPos "sp_e", [], 0, "FLY"];
    createVehicleCrew (_transC17);

    _cargo1 = _supply createVehicle getMarkerPos "sp_e";
    [_transC17, _cargo1] call Lala_C17_fnc_forceLoadCargo;
    _transC17 setVehicleLock "LOCKED";

    _transC17 landAt 5;

    [[(driver _transC17), "C-17 Transport approaching sand airfield, clear runway!"], "sideChat", west, false, false] call BIS_fnc_MP;

    _transC17 addEventHandler ["LandedStopped", {
        hint "Your supply has arrived";
        {deleteVehicle _x} forEach crew (_this select 0);
        (_this select 0) addAction ["<t color='#FFFF00'>Return C-17 to home base</t>", {
            _c17 = _this select 0;
            createVehicleCrew _c17;
			_c17 animate ["back_ramp", 0];
			_c17 animate ["back_ramp_st", 0];
			_c17 animate ["back_ramp_p", 0];
			_c17 animate ["back_ramp_p_2", 0];
			_c17 animate ["back_ramp_door_main", 0];
			
            [[(driver _transC17), "C-17 Transport RTB - clear taxi- and runway!"], "sideChat", west, false, false] call BIS_fnc_MP;
            _grpC17 = group _c17;
            _wp0 =_grpC17 addWaypoint [getMarkerPos "sp_e", 0];
            _wp0 setWaypointType "MOVE";
            _wp0 setWaypointSpeed "FULL";
            _wp0 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
            }];
       }];
    };

if (_transportcraft == "Landing Craft Air Cushion") then {

    _droppoint_pos = getmarkerpos "shorelanding1"; // TODO: Get the correct droppoint
    _spawnpos = getmarkerpos "sp_e";

    _supply_item_data_string1 = lbData [1507, 0];
    _supply_item_data1 = call compile _supply_item_data_string1;
	
	_supply_item_data_string2 = lbData [1507, 1];
    _supply_item_data2 = call compile _supply_item_data_string2;
	
	_supply_item_data_string3 = lbData [1507, 2];
    _supply_item_data3 = call compile _supply_item_data_string3;
	
	_supply_item_data_string4 = lbData [1507, 3];
    _supply_item_data4 = call compile _supply_item_data_string4;

    // Create the LCAC and its cargo
    _LCAC = createVehicle ["Burnes_LCAC_1", _spawnpos, [], 0, "NONE"];
	createVehicleCrew (_LCAC);
	
	hint format ["Inhalt: %1", _LCAC];
	
    _LCAC addMPEventHandler ["MPKilled", {
	hint "Crew is dead!";
	_LCAC setDamage 1;
	_counter = 0;
	while { _counter < 100} do
	{
		_position = getpos _LCAC;
		_LCAC setpos [ _position select 0, _position select 1, (_position select 2) - 0.01];
		_counter = _counter + 1;
	};
		}];
	
	_cargo_classname1 = _supply_item_data1 select 1;
	_cargo_classname2 = _supply_item_data2 select 1;
	_cargo_classname3 = _supply_item_data3 select 1;
	_cargo_classname4 = _supply_item_data4 select 1;
	
    _cargo1 = _cargo_classname1 createVehicle getmarkerpos "vehiclespawn";
	_cargo2 = _cargo_classname2 createVehicle getmarkerpos "vehiclespawn";
	_cargo3 = _cargo_classname3 createVehicle getmarkerpos "vehiclespawn";
	_cargo4 = _cargo_classname4 createVehicle getmarkerpos "vehiclespawn";
	
    _cargo1 setPosASL [_spawnpos select 0, _spawnpos select 1, 4];
	_cargo2 setPosASL [_spawnpos select 0, _spawnpos select 1, 5];
	_cargo3 setPosASL [_spawnpos select 0, _spawnpos select 1, 6];
	_cargo4 setPosASL [_spawnpos select 0, _spawnpos select 1, 7];

	_cargo1 attachTo [_LCAC, [2,5,1.3]];
	_cargo2 attachTo [_LCAC, [-2,5,1.3]];
	_cargo3 attachTo [_LCAC, [2,-5,1.3]];
	_cargo4 attachTo [_LCAC, [-2,-5,1.3]];
	
	_LCAC setVehicleLock "LOCKED";

	_grouplcac = group _LCAC;
	_grouplcac setBehaviour "CARELESS";	
		
	_wp0 =_grouplcac addWaypoint [_droppoint_pos, 0];
    _wp0 setWaypointType "MOVE";
    _wp0 setWaypointCompletionRadius 0.1;
    _wp0 setWaypointSpeed "FULL";
	_wp0 setWaypointStatements ["true", "[vehicle this, getMarkerPos 'sp_e'] execVM 'tmscti\lcac-unload.sqf';"];

    _wp1 =_grouplcac addWaypoint [getMarkerPos "sp_e", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];

	};
