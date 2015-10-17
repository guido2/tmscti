_position = _this select 0;

_nearest = nil;
_nearest_distance = 100000;

    {
	_location = call compile _x;
	_location_position = getMarkerPos (_location select 1);
    _current_distance = _location_position distance _position;
    if (_current_distance < _nearest_distance) then {
        _nearest = _x;
        _nearest_distance = _current_distance;
        };
    } forEach tms_supply_locations;

_nearest