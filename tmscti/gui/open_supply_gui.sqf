/*
Opens the supply GUI for the current player.

Parameters:

0: The area control installation the player is interacting with
*/

_installation = _this;

_supply_location_var = [position _installation] call tms_get_nearest_supply_location;
_supply_location = call compile _supply_location_var;

if (_supply_location select tms_sl_cols_side == side player) then {
	createDialog "HQSupply";
	}
else {
	systemChat format ["We do not hold supply location %1", _supply_location select tms_sl_cols_display_name];
	};
