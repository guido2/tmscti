_flag = _this select 0;
_name = _this select 1;

if (isServer) then {
	waitUntil {!isNil 'victory_locations'};

	hint format ["initializing flag %1 to side %2", _name, independent];
	_flag setVariable ["name", _name, true];
	_flag setVariable ["side", independent, true];
	victory_locations pushBack _flag;
};

if (hasInterface) then {
	_flag addAction [ format ["Take over %1", _name], "tmscti\take_over_flag.sqf", nil, 1.5, false, true, "", "side _this != _target getVariable ""side"";"];
};
