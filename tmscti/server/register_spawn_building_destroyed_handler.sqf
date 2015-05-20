if (isServer) then {
    _building = _this select 0;

    _building addMPEventHandler ["MPKilled", {hint "killed";}];
    _building addMPEventHandler ["dammaged", {hint "dammaged";}];
    };
