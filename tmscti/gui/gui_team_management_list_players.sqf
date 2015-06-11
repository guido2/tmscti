lbClear 1510;

{
    if ((isPlayer _x) and (side _x == playerSide)) then {
	
        _index = lbAdd [1510, name _x];
	_playername = name _x;
        _data = lbSetData [1510, _index, _playername];

    };
} forEach allUnits;




