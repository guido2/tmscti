/*
Parameters:
0: Transport vehicle (AN-22)
1: Cargo
*/

_carrier = _this select 0;
_items = _this select 1;
_carrier setVariable ["cargo_list", _items];

_carrier addAction ["Unload Cargo",{
	_carrier = _this select 0;
	_cargos = _carrier getVariable ["cargo_list",[]];
	if (count _cargos <= 0) exitWith { hint "Found nothing to unload." };
	_cargo = _cargos select (count (_cargos) - 1);

	_loadpos = _carrier ModelToWorld [0,-20,-3.45];
	_near = nearestObjects [_loadpos, ["All"], 3];
	_near = _near - _cargos;
	_obj = _near select 0;
	if (!isNil {_obj}) exitWith { hint format ["Please move %1 out of the way!",getText (configFile >> "cfgVehicles" >> typeof _obj >> "displayName")]; };

	if (_carrier animationPhase "rampin" == 0) then {
		_carrier setVariable ["c17_cargo_loading",true,true];
		_carrier animate ["rampin",1];

		[_carrier] execVM "\tmscti\item_functions\tms_an22_rampdown.sqf";
		waitUntil {(_carrier animationPhase "back_ramp_door_main") == 1};
		waitUntil {(_carrier animationPhase "back_ramp") == 1};
		_carrier setVariable ["c17_cargo_loading",false,true];
	};
	_veh_name = getText (configFile >> "cfgVehicles" >> typeof _cargo >> "displayName");
	(driver _carrier) vehicleChat format ["%1 unloaded from cargo",_veh_name];
	hint format ["%1 unloaded from cargo",_veh_name];
	[[_carrier, _cargo], "Lala_C17_fnc_unloadCargo"] spawn BIS_fnc_MP;

	_finished_cargo = [_cargo];
	_cargo_list = _cargos - _finished_cargo;
	_carrier setVariable ["cargo_list", _cargo_list];
}];
