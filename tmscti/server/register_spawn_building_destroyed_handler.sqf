if (isServer) then {
    _building = _this select 0;
    _respawnname = _this select 1;


     hint format ["registering handler for the destruction of spawn building %1: %2", _building, _respawnname];

    _building addEventHandler ["killed", {hint "killed";}];
    _building addEventHandler ["dammaged", {hint "dammaged";}];
    };