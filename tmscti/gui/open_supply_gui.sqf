/*
Opens the supply GUI for the current player.

Parameters:

0: The area control installation the player is interacting with
1: The variable name of the supply location to service
*/

_installation = _this select 0;
_supply_location_var = _this select 1;
_supply_location = call compile _supply_location_var;

tms_current_supply_location_var = _supply_location_var;
tms_current_supply_location = _supply_location;

if (_supply_location select tms_sl_cols_side == side player) then {
	createDialog "HQSupply";
	}
else {
	systemChat format ["We do not hold supply location %1", _supply_location select tms_sl_cols_display_name];
	};
