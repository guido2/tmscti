_position = _this select 0;
_objects = _this select 1;

systemChat format ["_objects is: %1", _objects];

_nearest = objNull;
_nearest_distance = 100000;

    {
    _current_distance = _x distance _position;
    if (_current_distance < _nearest_distance) then {
        _nearest = _x;
        _nearest_distance = _current_distance;
        };
    } forEach _objects;

_nearest