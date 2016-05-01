/*
This script is to be run on the server side only.

This will start the delivery of ordered airplanes to a supply location.
Usually called from callsuply.sqf

Parameters:

0: Class name of the ordered airplane
1: Variable name of the supply location to deliver to
*/

_airplane_class_name = _this select 0;
_supply_location_var = _this select 1;
_supply_location = call compile _supply_location_var;

_spawnpos = getmarkerpos "sp_e"; // TODO Get fitting spawn position

_airplane = createVehicle [_airplane_class_name, _spawnpos, [], 0, "FLY"];
createVehicleCrew _airplane;

(group _airplane) setBehaviour "CARELESS";

_airplane landAt (_supply_location select tms_sl_cols_airstrip_id);

[[(driver _airplane), "Aircraft approaching sand airfield, clear runway!"], "sideChat", west, false, false] call BIS_fnc_MP;

_airplane addEventHandler ["LandedStopped", {
	// TODO Better signalling
	hint "Your requested airplane has arrived";
	{deleteVehicle _x} forEach crew (_this select 0);
	}];
