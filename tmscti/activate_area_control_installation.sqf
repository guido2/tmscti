_installation = _this;

_supply_location_var = [position _installation] call tms_get_nearest_supply_location;
_supply_location = call compile _supply_location_var;
_supply_location_position = getMarkerPos (_supply_location select 1);

if (!(isNil '_supply_location' or (_supply_location_position distance _installation) > 100)) then {
	[
		[_building,
			[format ["Request base supply at %1", _supply_location select 0], {tms_current_supply_object = _this select 0; createDialog "HQSupply";} ]
		],
		"addAction",
		true,
		true
	] call BIS_fnc_MP;
	};
[
	[
		[_installation, side player],
		"tmscti\server\activate_area_control_installation.sqf"
	],
	"BIS_fnc_execVM",
	false // Execute on server only
] call BIS_fnc_MP;
