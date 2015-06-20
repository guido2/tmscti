_container = _this select 0;
_installation_class = _this select 1;
_installation_name = _this select 2;
_side = _this select 3;

_container setVariable ["side", _side, true];

[
    [_container,
        [format ["Unpack ", _installation_name], "tmscti\unpack_area_control_installation.sqf", [_installation_class, _installation_name]]
    ],
    "addAction",
    true,
    true
] call BIS_fnc_MP;
