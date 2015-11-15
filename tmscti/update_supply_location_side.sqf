/*
Checks which side should currently hold the given supply location and updates it accordingly

Parameters:
0: Name of the global variable describing the supply location in question
*/

_supply_location_variable = _this select 0;

_supply_location = call compile _supply_location_variable;
_supply_location_position = getMarkerPos (_supply_location select tms_sl_cols_map_marker);
_old_side = _supply_location select tms_sl_cols_side;

_west_aci_found = false; // Whether side west has an active aci in range of the location
	{
	_west_acis = _supply_location_position nearObjects [_x select 0, _x select 1];
	if (count _west_acis > 0) then {
		_west_aci_found = true;
		};
	} foreach tms_aci_types_west;
	
_east_aci_found = false; // Whether side east has an active aci in range of the location
	{
	_east_acis = _supply_location_position nearObjects [_x select 0, _x select 1];
	if (count _east_acis > 0) then {
		_east_aci_found = true;
		};
	} foreach tms_aci_types_east;

if (_west_aci_found and (not _east_aci_found)) then {
	if (_old_side != west) then {
		_supply_location set [tms_sl_cols_side, west];
		publicVariable _supply_location_variable;
		[
			format ["We have taken over supply location %1.", _supply_location select tms_sl_cols_display_name],
			"systemChat",
			west,
			false
		] call BIS_fnc_MP;
		};
	if (_old_side == east) then {
		[
			format ["We have lost supply location %1.", _supply_location select tms_sl_cols_display_name],
			"systemChat",
			east,
			false
		] call BIS_fnc_MP;
		};
	};

if (_east_aci_found and (not _west_aci_found)) then {
	if (_old_side != east) then {
		_supply_location set [tms_sl_cols_side, east];
		publicVariable _supply_location_variable;
		[
			format ["We have taken over supply location %1.", _supply_location select tms_sl_cols_display_name],
			"systemChat",
			east,
			false
		] call BIS_fnc_MP;
		};
	if (_old_side == west) then {
		[
			format ["We have lost supply location %1.", _supply_location select tms_sl_cols_display_name],
			"systemChat",
			west,
			false
		] call BIS_fnc_MP;
		};
	};

if (_east_aci_found and _west_aci_found) then {
	_supply_location set [tms_sl_cols_side, independent];
	publicVariable _supply_location_variable;
	[
		format ["Supply Location %1 is now contested.", _supply_location select tms_sl_cols_display_name],
		"systemChat",
		true,
		false
	] call BIS_fnc_MP;
	};

if ((not _east_aci_found) and (not _west_aci_found)) then {
	_supply_location set [tms_sl_cols_side, independent];
	publicVariable _supply_location_variable;
	if (_old_side != independent) then {
		[
			format ["Supply Location %1 is no longer controlled by anyone.", _supply_location select tms_sl_cols_display_name],
			"systemChat",
			_old_side,
			false
		] call BIS_fnc_MP;
		};
	};
