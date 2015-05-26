_flag = _this select 0;
_caller = _this select 1;

_flag setVariable ["side", side _caller, true];

[
    format ["%1 now belongs to side %2", _flag getVariable "name", side _caller],
    "systemChat",
    true,
    false
] call BIS_fnc_MP;
