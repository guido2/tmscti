/*
This script is to be run on the server side only.

This will start the delivery of ordered helicopter to a supply location.
Usually called from callsuply.sqf

Parameters:

0: Class name of the ordered airplane
1: Variable name of the supply location to deliver to
*/

_helicopter_class_name = _this select 0;
_supply_location_var = _this select 1;
_supply_location = call compile _supply_location_var;

_spawnpos = getmarkerpos "sp_e"; // TODO Get fitting spawn position

_supply_location = call compile _supply_location_var;
_droppoint_marker = (_supply_location select tms_sl_cols_delivery_positions) select 4;
_land_pos = getmarkerpos _droppoint_marker;

_helicopter = CreateVehicle [_helicopter_class_name, _spawnpos, [], 0, "FLY"];
createVehicleCrew (_helicopter);

_group = group _helicopter;
_group setBehaviour "CARELESS";

_helicopter addEventHandler ["Engine", {
	hint "Your supply has arrived";
	{deleteVehicle _x} forEach crew (_this select 0);
	_this select 0 removeAllEventHandlers "Engine";
	}];

_wp0 = _group addWaypoint [_land_pos, 0];
_wp0 setWaypointType "MOVE";
_wp0 setWaypointCompletionRadius 0.1;
_wp0 setWaypointSpeed "FULL";
_wp0 setWaypointStatements ["true", "(vehicle this) land 'land'"];
