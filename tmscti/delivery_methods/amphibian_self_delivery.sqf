/*
This script is to be run on the server side only.

This will start the delivery of ordered amphibian vehicle to a supply location.
Usually called from callsuply.sqf

Parameters:

0: Class name of the ordered vehicle
1: Variable name of the supply location to deliver to
*/

_vehicle_class_name = _this select 0;
_supply_location_var = _this select 1;
_supply_location = call compile _supply_location_var;

_spawnpos = getmarkerpos "sp_e"; // TODO Get fitting spawn position

_supply_location = call compile _supply_location_var;
_droppoint_marker = (_supply_location select tms_sl_cols_delivery_positions) select 4;
_land_pos = getmarkerpos _droppoint_marker;

_vehicle = CreateVehicle [_vehicle_class_name, _spawnpos, [], 0, "NONE"];
createVehicleCrew (_vehicle);

_group = group _vehicle;
_group setBehaviour "CARELESS";

_total_distance = _land_pos distance2D _spawnpos;
_partial_distance = _total_distance / 7; // This factor has to be increased if a vehicle won't move in the water

_direction = [_spawnpos, _land_pos] call BIS_fnc_dirTo;

// Additional waypoints will be created, because an amphibian vehicle won't move in the water if the distance between two waypoints is too damn high
_additional_wp_pos_0 = [_spawnpos, _partial_distance, _direction] call BIS_fnc_relPos;
_additional_wp_pos_1 = [_additional_wp_pos_0, _partial_distance, _direction] call BIS_fnc_relPos;
_additional_wp_pos_2 = [_additional_wp_pos_1, _partial_distance, _direction] call BIS_fnc_relPos;
_additional_wp_pos_3 = [_additional_wp_pos_2, _partial_distance, _direction] call BIS_fnc_relPos;
_additional_wp_pos_4 = [_additional_wp_pos_3, _partial_distance, _direction] call BIS_fnc_relPos;
_additional_wp_pos_5 = [_additional_wp_pos_4, _partial_distance, _direction] call BIS_fnc_relPos;

_wp0 =_group addWaypoint [_additional_wp_pos_0, 0]; //Interimpoint
_wp0 setWaypointType "MOVE";
_wp0 setWaypointCompletionRadius 100;
_wp0 setWaypointSpeed "FULL";

_wp1 =_group addWaypoint [_additional_wp_pos_1, 0]; //Interimpoint
_wp1 setWaypointType "MOVE";
_wp1 setWaypointCompletionRadius 100;
_wp1 setWaypointSpeed "FULL";

_wp2 =_group addWaypoint [_additional_wp_pos_2, 0]; //Interimpoint
_wp2 setWaypointType "MOVE";
_wp2 setWaypointCompletionRadius 100;
_wp2 setWaypointSpeed "FULL";

_wp3 =_group addWaypoint [_additional_wp_pos_3, 0]; //Interimpoint
_wp3 setWaypointType "MOVE";
_wp3 setWaypointCompletionRadius 100;
_wp3 setWaypointSpeed "FULL";

_wp4 =_group addWaypoint [_additional_wp_pos_4, 0]; //Interimpoint
_wp4 setWaypointType "MOVE";
_wp4 setWaypointCompletionRadius 100;
_wp4 setWaypointSpeed "FULL";

_wp5 =_group addWaypoint [_additional_wp_pos_5, 0]; //Interimpoint
_wp5 setWaypointType "MOVE";
_wp5 setWaypointCompletionRadius 100;
_wp5 setWaypointSpeed "FULL";

_wpfinal = _group addWaypoint [_land_pos, 0];
_wpfinal setWaypointType "MOVE";
_wpfinal setWaypointCompletionRadius 0.1;
_wpfinal setWaypointSpeed "FULL";
_wpfinal setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh;"];

