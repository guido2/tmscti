_installation = _this;

_aci_range = [typeOf _installation] call tms_get_range_of_aci_type;

_supply_location_variables = [position _installation, _aci_range] call tms_get_near_supply_locations;

	{
	_supply_location = call compile _x;
	_supply_location_position = getMarkerPos (_supply_location select 1);

	if (!(isNil '_supply_location' or (_supply_location_position distance _installation) > _aci_range)) then {
		[
			[_building,
				[format ["Request base supply at %1", _supply_location select 0], {_current_supply_object = _this select 0; [_current_supply_object, _this select 3] execVM "tmscti\gui\open_supply_gui.sqf";}, _x]
			],
			"addAction",
			true,
			true
		] call BIS_fnc_MP;
		};
	} forEach _supply_location_variables;

[
	[
		[_installation, side player],
		"tmscti\server\activate_area_control_installation.sqf"
	],
	"BIS_fnc_execVM",
	false // Execute on server only
] call BIS_fnc_MP;
