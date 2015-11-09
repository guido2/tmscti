_container = _this select 0;
_building_name = _this select 1;
_building_class = _this select 2;

[
	[_container,
		[format ["<t color='#FF0000'>Deploy %1</t>", _building_name], "tmscti\deploy_base_container.sqf", [_building_name, _building_class]]
	],
	"addAction",
	true,
	true
] call BIS_fnc_MP;
