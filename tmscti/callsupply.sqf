hint "Your selected supply is on the way";

_chosencraft = lbCurSel 2100;
_transportcraft = lbData [2100, _chosencraft];

if (_transportcraft == "CH-47 Chinook") then {
    if (lbSize 1507 == 1) then {
        _droppoint_pos = getmarkerpos "hqdrop1"; // TODO: Get the correct droppoint
        _spawnpos = getmarkerpos "sp_e";

        _supply_item_data_string = lbData [1507, 0];
        _supply_item_data = call compile _supply_item_data_string;

        // Create the helicopter and its cargo
        _CH47F = createVehicle ["RHS_CH_47F", _spawnpos, [], 0, "FLY"];
        createVehicleCrew (_CH47F);
        _CH47F setPosASL [_spawnpos select 0, _spawnpos select 1, 200];
        _cargo_classname = _supply_item_data select 1;
        _cargo = _cargo_classname createVehicle getmarkerpos "vehiclespawn";
        _cargo setPosASL [_spawnpos select 0, _spawnpos select 1, 195];

        // For basecontainers and other offcially "not slingloadable" objects:
        if(_cargo_classname == "Land_Cargo20_military_green_F") then {
            _cargo setMass [5000, 0];

            containerrope1 = ropeCreate [_CH47F, "slingload0", _cargo, [0, 1.0, 1], 10];
            containerrope2 = ropeCreate [_CH47F, "slingload0", _cargo, [0, -1.0, 1], 10];
            containerrope3 = ropeCreate [_CH47F, "slingload0", _cargo, [3.0, 0, 1], 10];
            containerrope4 = ropeCreate [_CH47F, "slingload0", _cargo, [-3.0, 0, 1], 10];
            }
        else {
            _CH47F setSlingLoad _cargo;
            };

        _CH47F setVehicleLock "LOCKED";

        _group = group _CH47F;
	_group setBehaviour "CARELESS";

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

    _spawnpos = getmarkerpos "sp_e";
	_supply_item_data_string = lbData [1507, 0];
    _supply_item_data = call compile _supply_item_data_string;
	_cargo_classname = _supply_item_data select 1;
    _cargo = _cargo_classname createVehicle getmarkerpos "vehiclespawn";
    _cargo setPosASL [_spawnpos select 0, _spawnpos select 1, 195];
		
    _transC17 = createVehicle ["USAF_C17", getMarkerPos "sp_e", [], 0, "FLY"];
    createVehicleCrew (_transC17);

    [_transC17, _cargo] call Lala_C17_fnc_forceLoadCargo;
    _transC17 setVehicleLock "LOCKED";
	_groupc17 = group _transC17;
	_groupc17 setBehaviour "CARELESS";

    _transC17 landAt 5;

    [[(driver _transC17), "C-17 Transport approaching sand airfield, clear runway!"], "sideChat", west, false, false] call BIS_fnc_MP;

    _transC17 addEventHandler ["LandedStopped", {
        hint "Your supply has arrived";
        {deleteVehicle _x} forEach crew (_this select 0);
        (_this select 0) addAction ["<t color='#FFFF00'>Return C-17 to home base</t>", {
            _transC17 = _this select 0;
            createVehicleCrew _transC17;
			_transC17 animate ["back_ramp", 0];
			_transC17 animate ["back_ramp_st", 0];
			_transC17 animate ["back_ramp_p", 0];
			_transC17 animate ["back_ramp_p_2", 0];
			_transC17 animate ["back_ramp_door_main", 0];
			
            [[(driver _transC17), "C-17 Transport RTB - clear taxi- and runway!"], "sideChat", west, false, false] call BIS_fnc_MP;
            _grpC17 = group _transC17;
            _wp0 =_grpC17 addWaypoint [getMarkerPos "sp_e", 0];
            _wp0 setWaypointType "MOVE";
            _wp0 setWaypointSpeed "FULL";
            _wp0 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
            }];
       }];
    };