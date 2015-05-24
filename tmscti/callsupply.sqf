hint "Your selected supply is on the way";

_row = lbCurSel 1500;
_supply = lbData [1500, _row];

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
_grp setCurrentWaypoint [_wp1];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointSpeed "FULL";
_wp1 setWaypointTimeout [2, 3, 4];

_marker1pos = getmarkerpos "sp_e";
_marker2pos = getmarkerpos "hqdrop1";
_direction = [_marker2pos, _marker1pos] call BIS_fnc_dirTo;
_additionalwp = [_marker2pos, 800, _direction] call BIS_fnc_relPos;
_wp3 =_grp addWaypoint [_additionalwp, 0]; //Interimpoint
_grp setCurrentWaypoint [_wp3];
_wp3 setWaypointType "MOVE";
_wp3 setWaypointCompletionRadius 0;
_wp3 setWaypointSpeed "FULL";
_CH47F flyinheight 40;

_wp2 =_grp addWaypoint [getMarkerPos "hqdrop1", 0]; //Droppoint
_grp setCurrentWaypoint [_wp2];
_wp2 setWaypointType "MOVE";
_wp2 setWaypointCompletionRadius 0;
_wp2 setWaypointSpeed "LIMITED";
_CH47F flyinheight 15;
_wp2 setWaypointTimeout [10, 15, 20];
_wp2 setWaypointStatements ["true", "ropeDestroy containerrope1; ropeDestroy containerrope2; ropeDestroy containerrope3; ropeDestroy containerrope4; hint 'Your supply has arrived';"];

_wp4 =_grp addWaypoint [getMarkerPos "sp_e", 0];
_wp4 setWaypointType "MOVE";
_wp4 setWaypointSpeed "FULL";
_wp4 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];


















