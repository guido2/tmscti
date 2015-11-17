/*
Helper function that returns an array of all supply location within given radius around a point

Parameter 0: Position on map
Parameter 1: Radius in meters
*/

_position = _this select 0;
_max_distance = _this select 1;

_out = [];

	{
	_location = call compile _x;
	_location_position = getMarkerPos (_location select tms_sl_cols_map_marker);
	_current_distance = _location_position distance _position;
	if (_current_distance < _max_distance) then {
		_out pushBack _x;
		};
	} forEach tms_supply_locations;

_out;
