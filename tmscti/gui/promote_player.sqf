_row = lbCurSel 1510;
_listedplayer = lbData [1510, _row];
_rank = _this select 0;

{
if (name _x == _listedplayer) then
	{
	_playername = _x;
	[_playername setRank _rank, nil, true, true] call BIS_fnc_MP;
	[[_playername, format [ "%1_SimpleRP", _rank ]], "BIS_fnc_setUnitInsignia", nil, true, true] call BIS_fnc_MP;
	hint format [ "%1 is now promoted to %2", _listedplayer, _rank ];
	};
} forEach allUnits;	

