_group = (_this select 0);

_active_location = getMarkerPos "tms_tl_ioannina";

_nearest_buildings = nearestObjects [_active_location, ["House"], 100];
_random_building = selectRandom _nearest_buildings;

_building_positions = _random_building call BIS_fnc_buildingPositions;
_number_of_positions = count _building_positions;

_random_position = random _number_of_positions;

_waypoint0 = _group addWaypoint [(_random_building buildingPos _random_position), 0];
_waypoint0 setWaypointType "MOVE";
_waypoint0 setWaypointTimeout [random 5, random 10, random 20];
_waypoint0 setWaypointBehaviour "SAFE";
_waypoint0 setWaypointCombatMode "RED";

_random_position = random _number_of_positions;

_waypoint1 = _group addWaypoint [(_random_building buildingPos _random_position), 0];
_waypoint1 setWaypointType "MOVE";
_waypoint1 setWaypointTimeout [random 15, random 30, random 60];
_waypoint1 setWaypointBehaviour "SAFE";
_waypoint1 setWaypointCombatMode "RED";

_random_position = random _number_of_positions;

_waypoint2 = _group addWaypoint [(_random_building buildingPos _random_position), 0];
_waypoint2 setWaypointType "MOVE";
_waypoint2 setWaypointTimeout [random 60, random 100, random 180];
_waypoint2 setWaypointBehaviour "SAFE";
_waypoint2 setWaypointCombatMode "RED";
_waypoint2 setWaypointStatements ["true", "[group this] execVM 'tmscti\ai_control\tms_ai_cycle_waypoints.sqf'"];