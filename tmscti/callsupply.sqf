hint "Your selected supply is on the way";

_row = lbCurSel 1500;
_supply = lbData [1500, _row];

_chosencraft = lbCurSel 2100;
_transportcraft = lbData [2100, _chosencraft];

hint format ["Index: %1" ,_transportcraft];

if (_transportcraft == "CH-47 Chinook") then {

    _CH47F = createVehicle ["RHS_CH_47F", getMarkerPos "sp_e", [], 0, "FLY"];

    createVehicleCrew (_CH47F);

    _cargo1 = _supply createVehicle getMarkerPos "sp_e";


    // For basecontainers and other "not slingloadable" objects:

    _cargo1 setMass [5000, 0];


    containerrope1 = ropeCreate [_CH47F, "slingload0", _cargo1, [0, 1.0, 1], 10];
    containerrope2 = ropeCreate [_CH47F, "slingload0", _cargo1, [0, -1.0, 1], 10];
    containerrope3 = ropeCreate [_CH47F, "slingload0", _cargo1, [3.0, 0, 1], 10];
    containerrope4 = ropeCreate [_CH47F, "slingload0", _cargo1, [-3.0, 0, 1], 10];


    // For all slingloadable objects:

    //_CH47F setSlingLoad _cargo1;

    _CH47F setVehicleLock "LOCKED";

    _grp = group _CH47F;

    _wp1 = _grp addWaypoint [getMarkerPos "sp_e", 0]; //Spawnpoint
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointTimeout [2, 3, 4];

    _marker1pos = getmarkerpos "sp_e";
    _marker2pos = getmarkerpos "hqdrop1";

    _direction = [_marker2pos, _marker1pos] call BIS_fnc_dirTo;

    _additionalwp = [_marker2pos, 800, _direction] call BIS_fnc_relPos;

    _wp3 =_grp addWaypoint [_additionalwp, 0]; //Interimpoint
    _wp3 setWaypointType "MOVE";
    _wp3 setWaypointCompletionRadius 0;
    _wp3 setWaypointSpeed "FULL";
    _wp3 setWaypointStatements ["true", "vehicle this flyinheight 15;"];


    _wp2 =_grp addWaypoint [getMarkerPos "hqdrop1", 0]; //Droppoint
    _wp2 setWaypointType "MOVE";
    _wp2 setWaypointCompletionRadius 0;
    _wp2 setWaypointSpeed "LIMITED";
    _wp2 setWaypointTimeout [25, 28, 30];
    _wp2 setWaypointStatements ["true", "vehicle this flyinheight 15; ropeDestroy containerrope1; ropeDestroy containerrope2; ropeDestroy containerrope3; ropeDestroy containerrope4; hint 'Your supply has arrived';"];


    _wp4 =_grp addWaypoint [getMarkerPos "sp_e", 0];
    _wp4 setWaypointType "MOVE";
    _wp4 setWaypointSpeed "FULL";
    _wp4 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
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
