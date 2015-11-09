_container = _this select 0;
_params = _this select 3;
_building_name = _params select 0;
_building_class = _params select 1;

// TODO: Use any of town location, victory location, supply location, special location
_supply_location = call compile ([position _container] call tms_get_nearest_supply_location);
_supply_location_position = getMarkerPos (_supply_location select 1);

if (!(isNil '_supply_location' or (_supply_location_position distance _container) > 100)) then {
	for "_i" from 0 to 5 do {
		player playmove "AinvPknlMstpSlayWnonDnon_medic";
		};

	sleep 8;

	_side = _container getVariable "side";
	_position = getPos _container;

	deleteVehicle _container;

	_building = _building_class createVehicle _position;

	[_side, _building] call BIS_fnc_addRespawnPosition;
	_building setVariable ["side", _side, true];

	// R3F factory system, for debugging purposes only. This will get removed for the real game.
	[
		 [[_building, 5000000, _side], "R3F_LOG\USER_FUNCT\init_creation_factory.sqf"],
		 "BIS_fnc_execVM",
		 true,
		 true
	] call BIS_fnc_MP;

	[
		[_building,
			[format ["<t color='#FF0000'>Pack %1</t>", _building_name], "tmscti\pack_base_container.sqf", [_building_name, _building_class]]
		],
		"addAction",
		true,
		true
	] call BIS_fnc_MP;

	_building setVariable ["side", _side, true];
	_building call tms_activate_area_control_installation;
	}
else {
	systemChat "Cannot deploy base container: Not in range of a supply location.";
	};
