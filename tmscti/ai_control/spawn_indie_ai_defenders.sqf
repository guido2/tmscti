
_trigger = _this select 0;
_active_location = getPos _trigger;
_triggerinfos_var = triggerText _trigger;
_triggerinfos = call compile _triggerinfos_var;
_location_name = _triggerinfos select 0;
_active_location_size = _triggerinfos select 1;

if(isServer) then {

	for "_x" from 1 to _active_location_size do {
		_group_size = random [2, 6, 12];
		_group = createGroup resistance;

		for "_i" from 1 to _group_size do {
			_ai_soldier = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			_ai_soldier setSkill 0.75;

			if (_i == 1) then {
				_group selectLeader _ai_soldier;
				_ai_soldier setSkill 0.85;
			};
			_equip_soldier = compile preprocessFileLineNumbers "tmscti\ai_control\equip_resistance_infantry.sqf";
			[_ai_soldier, _i] call _equip_soldier;
			_group_behaviour_options = [0, 1]; //0 = Loitering and not serious, 1 = Patrolling the Area
			_group_behaviour = selectRandom _group_behaviour_options;

			if (_group_size > 6) then {
				if (_group_behaviour == 0) then {
					_waypoint_loiter =_group addWaypoint [_active_location, 0];
					_waypoint_loiter setWaypointType "DISMISS";
					_waypoint_loiter setWaypointBehaviour "SAFE";
					_waypoint_loiter setWaypointCombatMode "RED";
				} else {
					_waypoint_sad =_group addWaypoint [_active_location, 0];
					_waypoint_sad setWaypointType "SAD";
					_waypoint_sad setWaypointBehaviour "SAFE";
					_waypoint_sad setWaypointCombatMode "RED";
				};

			} else {
				_nearest_buildings = nearestObjects [_active_location, ["House"], 100];
				_number_of_buildings = count _nearest_buildings;

				if (_number_of_buildings > 0) then {
					_random_building = selectRandom _nearest_buildings;
					_building_positions = _random_building call BIS_fnc_buildingPositions;
					_number_of_positions = count _building_positions;
					_random_position = random _number_of_positions;

					_waypoint_patrol = _group addWaypoint [(_random_building buildingPos _random_position), 100];
					_waypoint_patrol setWaypointType "MOVE";
					_waypoint_patrol setWaypointTimeout [random 5, random 10, random 20];
					_waypoint_patrol setWaypointBehaviour "SAFE";
					_waypoint_patrol setWaypointCombatMode "RED";
					_waypoint_patrol setWaypointStatements ["true", "[group this] execVM 'tmscti\ai_control\ai_cycle_waypoints.sqf'"];

				} else {
					_waypoint_patrol2 =_group addWaypoint [_active_location, 100];
					_waypoint_patrol2 setWaypointType "SAD";
					_waypoint_patrol2 setWaypointBehaviour "SAFE";
					_waypoint_patrol2 setWaypointCombatMode "RED";
				};
			};
		};

//Vehiclespawn:

	if (_group_size > 6) then {
		_light_vehicle_selection = selectRandom tms_greenfor_light_vehicles_pool;
		_safe_spot = _active_location findEmptyPosition [0, 100, _light_vehicle_selection];
		_light_vehicle = createVehicle [_light_vehicle_selection, _safe_spot, [], 1, "FORM"];
		_vehiclegroup = createGroup resistance;

		_free_commander_positions = _light_vehicle emptyPositions "Commander";
		for "_c" from 0 to _free_commander_positions do {
			_ai_commander = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			nul = _ai_commander execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
			_ai_commander setSkill 0.85;
			_ai_commander moveInCommander _light_vehicle;
			[_ai_commander] join _vehiclegroup;
			_vehiclegroup selectLeader _ai_commander;
		};

		_free_driver_positions = _light_vehicle emptyPositions "Driver";
		for "_d" from 0 to _free_driver_positions do {
			_ai_driver = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			nul = _ai_driver execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
			_ai_driver setSkill 0.75;
			_ai_driver moveInDriver _light_vehicle;
			[_ai_driver] join _vehiclegroup;
		};

		_free_gunner_positions = _light_vehicle emptyPositions "Gunner";
		for "_g" from 0 to _free_gunner_positions do {
			_ai_gunner = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			nul = _ai_gunner execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
			_ai_gunner setSkill 0.75;
			_ai_gunner moveInGunner _light_vehicle;
			[_ai_gunner] join _vehiclegroup;
		};

			_free_cargo_positions = _light_vehicle emptyPositions "Cargo";
			for "_c" from 0 to _free_cargo_positions do {
				_ai_soldier = _vehiclegroup createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_soldier setSkill 0.75;
				_equip_soldier = compile preprocessFileLineNumbers "tmscti\ai_control\equip_resistance_infantry.sqf";
				[_ai_soldier, _c] call _equip_soldier;
				_ai_soldier moveInAny _light_vehicle;
				[_ai_soldier] join _vehiclegroup;
			};

			_waypoint_drive =_vehiclegroup addWaypoint [_active_location, 100];
			_waypoint_drive setWaypointType "SAD";
			_waypoint_drive setWaypointBehaviour "SAFE";
			_waypoint_drive setWaypointCombatMode "RED";
		};
	};

//Medium and heavy vehicles:

	if (_active_location_size > 5) then {
		_group = createGroup resistance;
		_chances_of_medium_vehicle = selectRandom [0,1,2];
		for "_y" from 0 to _chances_of_medium_vehicle do {
			_medium_vehicle_selection = selectRandom tms_greenfor_medium_vehicles_pool;
			_safe_spot = _active_location findEmptyPosition [0, 100, _medium_vehicle_selection];
			_medium_vehicle = createVehicle [_medium_vehicle_selection, _safe_spot, [], 1, "FORM"];
			_vehiclegroup = createGroup resistance;

			_free_commander_positions = _medium_vehicle emptyPositions "Commander";
			for "_c" from 0 to _free_commander_positions do {
				_ai_commander = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				nul = _ai_commander execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
				_ai_commander setSkill 0.85;
				_ai_commander moveInCommander _medium_vehicle;
				[_ai_commander] join _vehiclegroup;
				_vehiclegroup selectLeader _ai_commander;
			};

			_free_driver_positions = _medium_vehicle emptyPositions "Driver";
			for "_c" from 0 to _free_driver_positions do {
				_ai_driver = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				nul = _ai_driver execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
				_ai_driver setSkill 0.75;
				_ai_driver moveInDriver _medium_vehicle;
				[_ai_driver] join _vehiclegroup;
			};

			_free_gunner_positions = _medium_vehicle emptyPositions "Gunner";
			for "_c" from 0 to _free_gunner_positions do {
				_ai_gunner = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				nul = _ai_gunner execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
				_ai_gunner setSkill 0.75;
				_ai_gunner moveInGunner _medium_vehicle;
				[_ai_gunner] join _vehiclegroup;
			};

			_free_cargo_positions = _medium_vehicle emptyPositions "Cargo";
			for "_c" from 0 to _free_cargo_positions do {
				_ai_soldier = _vehiclegroup createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_soldier setSkill 0.75;
				_equip_soldier = compile preprocessFileLineNumbers "tmscti\ai_control\equip_resistance_infantry.sqf";
				[_ai_soldier, _c] call _equip_soldier;
				_ai_soldier moveInAny _medium_vehicle;
				[_ai_soldier] join _vehiclegroup;
			};

			_waypoint_drive =_vehiclegroup addWaypoint [_active_location, 100];
			_waypoint_drive setWaypointType "SENTRY";
			_waypoint_drive setWaypointBehaviour "SAFE";
			_waypoint_drive setWaypointCombatMode "RED";
		};
	};

if (_active_location_size > 7) then {
		_group = createGroup resistance;
		_chances_of_heavy_vehicle = selectRandom [0,1,2];
		for "_y" from 0 to _chances_of_heavy_vehicle do {
			_heavy_vehicle_selection = selectRandom tms_greenfor_heavy_vehicles_pool;
			_safe_spot = _active_location findEmptyPosition [0, 100, _heavy_vehicle_selection];
			_heavy_vehicle = createVehicle [_heavy_vehicle_selection, _safe_spot, [], 1, "FORM"];
			_vehiclegroup = createGroup resistance;
			
			_free_commander_positions = _heavy_vehicle emptyPositions "Commander";
			for "_c" from 0 to _free_commander_positions do {
				_ai_commander = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				nul = _ai_commander execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
				_ai_commander setSkill 0.85;
				_ai_commander moveInCommander _heavy_vehicle;
				[_ai_commander] join _vehiclegroup;
				_vehiclegroup selectLeader _ai_commander;
			};

			_free_driver_positions = _heavy_vehicle emptyPositions "Driver";
			for "_c" from 0 to _free_driver_positions do {
				_ai_driver = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				nul = _ai_driver execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
				_ai_driver setSkill 0.75;
				_ai_driver moveInDriver _heavy_vehicle;
				[_ai_driver] join _vehiclegroup;
			};

			_free_gunner_positions = _heavy_vehicle emptyPositions "Gunner";
			for "_c" from 0 to _free_gunner_positions do {
				_ai_gunner = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				nul = _ai_gunner execVM "tmscti\ai_control\equip_resistance_vehicle_crews.sqf";
				_ai_gunner setSkill 0.75;
				_ai_gunner moveInGunner _heavy_vehicle;
				[_ai_gunner] join _vehiclegroup;
			};

			_free_cargo_positions = _heavy_vehicle emptyPositions "Cargo";
			for "_c" from 0 to _free_cargo_positions do {
				_ai_soldier = _vehiclegroup createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_soldier setSkill 0.75;
				_equip_soldier = compile preprocessFileLineNumbers "tmscti\ai_control\equip_resistance_infantry.sqf";
				[_ai_soldier, _c] call _equip_soldier;
				_ai_soldier moveInAny _heavy_vehicle;
				[_ai_soldier] join _vehiclegroup;
			};

			_waypoint_drive =_vehiclegroup addWaypoint [_active_location, 100];
			_waypoint_drive setWaypointType "SENTRY";
			_waypoint_drive setWaypointBehaviour "SAFE";
			_waypoint_drive setWaypointCombatMode "RED";
		};
	};
};
