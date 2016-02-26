_helicopter = _this select 0;
_rtb_pos = _this select 1;

_helicopter flyinheight 8;
sleep 8;
_helicopter setSlingLoad objNull;
hint 'Cargo has been dropped';
_helicopter flyinheight 35;

_group = group _helicopter;
_egress_wp =_group addWaypoint [_rtb_pos, 0];
_egress_wp setWaypointType "MOVE";
_egress_wp setWaypointSpeed "FULL";
_egress_wp setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
