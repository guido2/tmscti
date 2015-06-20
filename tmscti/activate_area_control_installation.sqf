_installation = _this select 0;
_caller = _this select 1;

[
    [
        [_installation, side _caller],
        "tmscti\server\activate_area_control_installation.sqf"
    ],
    "BIS_fnc_execVM",
    false // Execute on server only
] call BIS_fnc_MP;
