while { !mission_ended } do {
    sleep 5;
	_old_victory_position = victory_position;
    {
	    if ((_x getVariable "side") == west) then {
		    victory_position = victory_position + 1;
			};
	    if ((_x getVariable "side") == east) then {
		    victory_position = victory_position - 1;
			};
	} forEach victory_locations;

	if (_old_victory_position != victory_position) then {
	    [
            format ["Score West now: %1. Score East now: %2", victory_position, victory_position * -1],
            "systemChat",
            true,
            false
        ] call BIS_fnc_MP;
	};

	if (victory_position >= 10) then {
	    [
            ["end1", true, true],
            "BIS_fnc_endMission",
            west,
            false
        ] call BIS_fnc_MP;
	    [
            ["end1", false, true],
            "BIS_fnc_endMission",
            east,
            false
        ] call BIS_fnc_MP;
		mission_ended = true;
	};

	if (victory_position <= -10) then {
	    [
            ["end1", false, true],
            "BIS_fnc_endMission",
            west,
            false
        ] call BIS_fnc_MP;
	    [
            ["end1", true, true],
            "BIS_fnc_endMission",
            east,
            false
        ] call BIS_fnc_MP;
		mission_ended = true;
	};
};
