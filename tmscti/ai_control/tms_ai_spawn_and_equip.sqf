
_trigger = _this select 0;
_active_location = getPos _trigger;
_triggerinfos_var = triggerText _trigger;
_triggerinfos = call compile _triggerinfos_var;
_location_name = _triggerinfos select 0;
_active_location_size = _triggerinfos select 1;

if(isServer) then {

	for "_i" from 1 to _active_location_size do {
		_group_size = random [2, 6, 12];
		_group = createGroup resistance;
		_counter = 0;

		for "_i" from 1 to _group_size do {
			_ai_soldier = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			_ai_soldier setskill 0.75;

			if (_counter == 0) then {
				_group selectLeader _ai_soldier;
				_ai_soldier setskill 0.85;
			};

			_weapon = selectRandom tms_greenfor_standard_weapons_pool;
			_special_weapon = selectRandom tms_greenfor_special_weapons_pool;
			_launcher = selectRandom tms_greenfor_launchers_pool;
			_side_weapon = selectRandom tms_greenfor_side_weapons_pool;
			_helmet = selectRandom tms_greenfor_helmets_pool;
			_vest = selectRandom tms_greenfor_vests_pool;
			_uniform = selectRandom tms_greenfor_uniform_pool;
			_backpack = selectRandom tms_greenfor_backpacks_pool;
			_facewear = selectRandom tms_greenfor_facewear_pool;
			_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
			_magazines = selectRandom _magazines_pool;
			_launcher_magazines_pool = (configFile >> "CfgWeapons" >> _launcher >> "magazines") call BIS_fnc_getCfgData;
			_launcher_magazines = selectRandom _launcher_magazines_pool;

			removeAllWeapons _ai_soldier;
			removeAllItems _ai_soldier;
			removeAllAssignedItems _ai_soldier;
			removeUniform _ai_soldier;
			removeVest _ai_soldier;
			removeBackpack _ai_soldier;
			removeHeadgear _ai_soldier;
			removeGoggles _ai_soldier;

			_ai_soldier forceAddUniform _uniform;
			_ai_soldier addVest _vest;
			for "_j" from 1 to 6 do {_ai_soldier addItemToVest _magazines;};
			for "_j" from 1 to 2 do {_ai_soldier addItemToVest "HandGrenade";};
			_ai_soldier addItemToVest "SmokeShell";
			for "_j" from 1 to 2 do {_ai_soldier addItemToVest "Chemlight_green";};
			_ai_soldier addBackpack _backpack;
			_ai_soldier addHeadgear _helmet;
			_ai_soldier addGoggles _facewear;
			_ai_soldier linkItem "tf_anprc148jem_3";

// Chances of how often Special Weapons and Launchers will be spawned

			if (_counter == 4) then {
				_ai_soldier addWeapon _special_weapon;
			} else {
				_ai_soldier addWeapon _weapon;
			};

			if (_counter == 5) then {
				_ai_soldier addWeapon _launcher;
				for "_jx" from 1 to 3 do {_ai_soldier addItemToBackpack _launcher_magazines;};
				_counter = 0;
			};

			_counter = _counter + 1;
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
				
				if (_number_of_buildings < 0) then {
					_random_building = selectRandom _nearest_buildings;
					_building_positions = _random_building call BIS_fnc_buildingPositions;
					_number_of_positions = count _building_positions;
					_random_position = random _number_of_positions;

					_waypoint_patrol = _group addWaypoint [(_random_building buildingPos _random_position), 100];
					_waypoint_patrol setWaypointType "MOVE";
					_waypoint_patrol setWaypointTimeout [random 5, random 10, random 20];
					_waypoint_patrol setWaypointBehaviour "SAFE";
					_waypoint_patrol setWaypointCombatMode "RED";
					_waypoint_patrol setWaypointStatements ["true", "[group this] execVM 'tmscti\ai_control\tms_ai_cycle_waypoints.sqf'"];
				
				} else {
					_waypoint_patrol2 =_group addWaypoint [_active_location, 100];
					_waypoint_patrol2 setWaypointType "SAD";
					_waypoint_patrol2 setWaypointBehaviour "SAFE";
					_waypoint_patrol2 setWaypointCombatMode "RED";
				};
			};
		};

//Vehiclespawn:

	_weapon = selectRandom tms_greenfor_standard_weapons_pool;
	_vest = selectRandom tms_greenfor_vests_pool;
	_uniform = selectRandom tms_greenfor_uniform_pool;
	_facewear = selectRandom tms_greenfor_facewear_pool;


	if (_group_size > 6) then {
		_weapon = selectRandom tms_greenfor_crew_weapons_pool;
		_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
		_magazines = selectRandom _magazines_pool;
		_light_vehicle_selection = selectRandom tms_greenfor_light_vehicles_pool;
		_light_vehicle = createVehicle [_light_vehicle_selection, _active_location, [], 100, "FORM"];
		_vehiclegroup = createGroup resistance;
		_free_commander_positions = _light_vehicle emptyPositions "Commander";

		for "_c" from 0 to _free_commander_positions do {
			_ai_commander = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			_ai_commander setskill 0.85;
			removeAllWeapons _ai_commander;
			removeAllItems _ai_commander;
			removeAllAssignedItems _ai_commander;
			removeUniform _ai_commander;
			removeVest _ai_commander;
			removeBackpack _ai_commander;
			removeHeadgear _ai_commander;
			removeGoggles _ai_commander;

			_ai_commander forceAddUniform _uniform;
			_ai_commander addVest _vest;
			_ai_commander addWeapon _weapon;
			for "_j" from 1 to 6 do {_ai_commander addItemToVest _magazines;};
			for "_j" from 1 to 2 do {_ai_commander addItemToVest "HandGrenade";};
			_ai_commander addItemToVest "SmokeShell";
			for "_j" from 1 to 2 do {_ai_commander addItemToVest "Chemlight_green";};
			_ai_commander addGoggles _facewear;
			_ai_commander linkItem "tf_anprc148jem_3";
			_ai_commander moveInCommander _light_vehicle;
			[_ai_commander] join _vehiclegroup;
			_vehiclegroup selectLeader _ai_commander;
		};

		_free_driver_positions = _light_vehicle emptyPositions "Driver";
		for "_d" from 0 to _free_driver_positions do {
			_ai_driver = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			_ai_driver setskill 0.75;
			removeAllWeapons _ai_driver;
			removeAllItems _ai_driver;
			removeAllAssignedItems _ai_driver;
			removeUniform _ai_driver;
			removeVest _ai_driver;
			removeBackpack _ai_driver;
			removeHeadgear _ai_driver;
			removeGoggles _ai_driver;
			_ai_driver forceAddUniform _uniform;
			_ai_driver addVest _vest;
			_ai_driver addWeapon _weapon;
			for "_j" from 1 to 6 do {_ai_driver addItemToVest _magazines;};
			for "_j" from 1 to 2 do {_ai_driver addItemToVest "HandGrenade";};
			_ai_driver addItemToVest "SmokeShell";
			for "_j" from 1 to 2 do {_ai_driver addItemToVest "Chemlight_green";};
			_ai_driver addGoggles _facewear;
			_ai_driver linkItem "tf_anprc148jem_3";
			_ai_driver moveInDriver _light_vehicle;
			[_ai_driver] join _vehiclegroup;
		};

		_free_gunner_positions = _light_vehicle emptyPositions "Gunner";
		for "_g" from 0 to _free_gunner_positions do {
			_ai_gunner = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
			_ai_gunner setskill 0.85;
			removeAllWeapons _ai_gunner;
			removeAllItems _ai_gunner;
			removeAllAssignedItems _ai_gunner;
			removeUniform _ai_gunner;
			removeVest _ai_gunner;
			removeBackpack _ai_gunner;
			removeHeadgear _ai_gunner;
			removeGoggles _ai_gunner;
			_ai_gunner forceAddUniform _uniform;
			_ai_gunner addVest _vest;
			_ai_gunner addWeapon _weapon;
			for "_j" from 1 to 6 do {_ai_gunner addItemToVest _magazines;};
			for "_j" from 1 to 2 do {_ai_gunner addItemToVest "HandGrenade";};
			_ai_gunner addItemToVest "SmokeShell";
			for "_j" from 1 to 2 do {_ai_gunner addItemToVest "Chemlight_green";};
			_ai_gunner addGoggles _facewear;
			_ai_gunner linkItem "tf_anprc148jem_3";
			_ai_gunner moveInGunner _light_vehicle;
			[_ai_gunner] join _vehiclegroup;
		};

			_free_cargo_positions = _light_vehicle emptyPositions "Cargo";
			for "_c" from 0 to _free_cargo_positions do {
				_ai_soldier = _vehiclegroup createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_soldier setskill 0.75;
				_weapon = selectRandom tms_greenfor_standard_weapons_pool;
				_special_weapon = selectRandom tms_greenfor_special_weapons_pool;
				_launcher = selectRandom tms_greenfor_launchers_pool;
				_side_weapon = selectRandom tms_greenfor_side_weapons_pool;
				_helmet = selectRandom tms_greenfor_helmets_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_backpack = selectRandom tms_greenfor_backpacks_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				removeAllWeapons _ai_soldier;
				removeAllItems _ai_soldier;
				removeAllAssignedItems _ai_soldier;
				removeUniform _ai_soldier;
				removeVest _ai_soldier;
				removeBackpack _ai_soldier;
				removeHeadgear _ai_soldier;
				removeGoggles _ai_soldier;
				_ai_soldier addWeapon _weapon;
				_ai_soldier forceAddUniform _uniform;
				_ai_soldier addVest _vest;
				for "_j" from 1 to 6 do {_ai_soldier addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_soldier addItemToVest "HandGrenade";};
				_ai_soldier addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_soldier addItemToVest "Chemlight_green";};
				_ai_soldier addBackpack _backpack;
				_ai_soldier addHeadgear _helmet;
				_ai_soldier addGoggles _facewear;
				_ai_soldier linkItem "tf_anprc148jem_3";
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
		for "_xy" from 0 to _chances_of_medium_vehicle do {
			_medium_vehicle_selection = selectRandom tms_greenfor_medium_vehicles_pool;
			_medium_vehicle = createVehicle [_medium_vehicle_selection, _active_location, [], 100, "FORM"];
			_vehiclegroup = createGroup resistance;
			
			_free_commander_positions = _medium_vehicle emptyPositions "Commander";
			for "_mc" from 0 to _free_commander_positions do {
				_weapon = selectRandom tms_greenfor_crew_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				_ai_commander = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_commander setskill 0.85;
				removeAllWeapons _ai_commander;
				removeAllItems _ai_commander;
				removeAllAssignedItems _ai_commander;
				removeUniform _ai_commander;
				removeVest _ai_commander;
				removeBackpack _ai_commander;
				removeHeadgear _ai_commander;
				removeGoggles _ai_commander;
				_ai_commander forceAddUniform _uniform;
				_ai_commander addVest _vest;
				_ai_commander addWeapon _weapon;
				for "_j" from 1 to 6 do {_ai_commander addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_commander addItemToVest "HandGrenade";};
				_ai_commander addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_commander addItemToVest "Chemlight_green";};
				_ai_commander addGoggles _facewear;
				_ai_commander linkItem "tf_anprc148jem_3";
				_ai_commander moveInCommander _medium_vehicle;
				[_ai_commander] join _vehiclegroup;
				_vehiclegroup selectLeader _ai_commander;
			};

			_free_driver_positions = _medium_vehicle emptyPositions "Driver";
			for "_md" from 0 to _free_driver_positions do {
				_weapon = selectRandom tms_greenfor_crew_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				_ai_driver = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_driver setskill 0.75;
				removeAllWeapons _ai_driver;
				removeAllItems _ai_driver;
				removeAllAssignedItems _ai_driver;
				removeUniform _ai_driver;
				removeVest _ai_driver;
				removeBackpack _ai_driver;
				removeHeadgear _ai_driver;
				removeGoggles _ai_driver;
				_ai_driver forceAddUniform _uniform;
				_ai_driver addVest _vest;
				_ai_driver addWeapon _weapon;
				for "_j" from 1 to 6 do {_ai_driver addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_driver addItemToVest "HandGrenade";};
				_ai_driver addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_driver addItemToVest "Chemlight_green";};
				_ai_driver addGoggles _facewear;
				_ai_driver linkItem "tf_anprc148jem_3";
				_ai_driver moveInDriver _medium_vehicle;
				[_ai_driver] join _vehiclegroup;
			};

			_free_gunner_positions = _medium_vehicle emptyPositions "Gunner";
			for "_g" from 0 to _free_gunner_positions do {
				_weapon = selectRandom tms_greenfor_crew_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				_ai_gunner = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_gunner setskill 0.85;
				removeAllWeapons _ai_gunner;
				removeAllItems _ai_gunner;
				removeAllAssignedItems _ai_gunner;
				removeUniform _ai_gunner;
				removeVest _ai_gunner;
				removeBackpack _ai_gunner;
				removeHeadgear _ai_gunner;
				removeGoggles _ai_gunner;
				_ai_gunner forceAddUniform _uniform;
				_ai_gunner addVest _vest;
				_ai_gunner addWeapon _weapon;
				for "_j" from 1 to 6 do {_ai_gunner addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_gunner addItemToVest "HandGrenade";};
				_ai_gunner addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_gunner addItemToVest "Chemlight_green";};
				_ai_gunner addGoggles _facewear;
				_ai_gunner linkItem "tf_anprc148jem_3";
				_ai_gunner moveInGunner _medium_vehicle;
				[_ai_gunner] join _vehiclegroup;
			};

			_free_cargo_positions = _medium_vehicle emptyPositions "Cargo";
			for "_mc" from 0 to _free_cargo_positions do {
				_ai_soldier = _vehiclegroup createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_soldier setskill 0.75;
				_weapon = selectRandom tms_greenfor_standard_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_special_weapon = selectRandom tms_greenfor_side_weapons_pool;
				_launcher = selectRandom tms_greenfor_launchers_pool;
				_side_weapon = selectRandom tms_greenfor_side_weapons_pool;
				_helmet = selectRandom tms_greenfor_helmets_pool;
				_backpack = selectRandom tms_greenfor_backpacks_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				removeAllWeapons _ai_soldier;
				removeAllItems _ai_soldier;
				removeAllAssignedItems _ai_soldier;
				removeUniform _ai_soldier;
				removeVest _ai_soldier;
				removeBackpack _ai_soldier;
				removeHeadgear _ai_soldier;
				removeGoggles _ai_soldier;
				_ai_soldier addWeapon _weapon;
				_ai_soldier forceAddUniform _uniform;
				_ai_soldier addVest _vest;
				for "_j" from 1 to 6 do {_ai_soldier addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_soldier addItemToVest "HandGrenade";};
				_ai_soldier addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_soldier addItemToVest "Chemlight_green";};
				_ai_soldier addBackpack _backpack;
				_ai_soldier addHeadgear _helmet;
				_ai_soldier addGoggles _facewear;
				_ai_soldier linkItem "tf_anprc148jem_3";
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
		for "_xz" from 0 to _chances_of_heavy_vehicle do {
			_heavy_vehicle_selection = selectRandom tms_greenfor_heavy_vehicles_pool;
			_heavy_vehicle = createVehicle [_heavy_vehicle_selection, _active_location, [], 100, "FORM"];
			_vehiclegroup = createGroup resistance;
			
			_free_commander_positions = _heavy_vehicle emptyPositions "Commander";
			for "_mc" from 0 to _free_commander_positions do {
				_weapon = selectRandom tms_greenfor_crew_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				_ai_commander = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_commander setskill 0.85;
				removeAllWeapons _ai_commander;
				removeAllItems _ai_commander;
				removeAllAssignedItems _ai_commander;
				removeUniform _ai_commander;
				removeVest _ai_commander;
				removeBackpack _ai_commander;
				removeHeadgear _ai_commander;
				removeGoggles _ai_commander;
				_ai_commander forceAddUniform _uniform;
				_ai_commander addVest _vest;
				_ai_commander addWeapon _weapon;
				for "_j" from 1 to 6 do {_ai_commander addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_commander addItemToVest "HandGrenade";};
				_ai_commander addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_commander addItemToVest "Chemlight_green";};
				_ai_commander addGoggles _facewear;
				_ai_commander linkItem "tf_anprc148jem_3";
				_ai_commander moveInCommander _heavy_vehicle;
				[_ai_commander] join _vehiclegroup;
				_vehiclegroup selectLeader _ai_commander;
			};

			_free_driver_positions = _heavy_vehicle emptyPositions "Driver";
			for "_md" from 0 to _free_driver_positions do {
				_weapon = selectRandom tms_greenfor_crew_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				_ai_driver = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_driver setskill 0.75;
				removeAllWeapons _ai_driver;
				removeAllItems _ai_driver;
				removeAllAssignedItems _ai_driver;
				removeUniform _ai_driver;
				removeVest _ai_driver;
				removeBackpack _ai_driver;
				removeHeadgear _ai_driver;
				removeGoggles _ai_driver;
				_ai_driver forceAddUniform _uniform;
				_ai_driver addVest _vest;
				_ai_driver addWeapon _weapon;
				for "_j" from 1 to 6 do {_ai_driver addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_driver addItemToVest "HandGrenade";};
				_ai_driver addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_driver addItemToVest "Chemlight_green";};
				_ai_driver addGoggles _facewear;
				_ai_driver linkItem "tf_anprc148jem_3";
				_ai_driver moveInDriver _heavy_vehicle;
				[_ai_driver] join _vehiclegroup;
			};

			_free_gunner_positions = _heavy_vehicle emptyPositions "Gunner";
			for "_g" from 0 to _free_gunner_positions do {
				_weapon = selectRandom tms_greenfor_crew_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				_ai_gunner = _group createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_gunner setskill 0.85;
				removeAllWeapons _ai_gunner;
				removeAllItems _ai_gunner;
				removeAllAssignedItems _ai_gunner;
				removeUniform _ai_gunner;
				removeVest _ai_gunner;
				removeBackpack _ai_gunner;
				removeHeadgear _ai_gunner;
				removeGoggles _ai_gunner;
				_ai_gunner forceAddUniform _uniform;
				_ai_gunner addVest _vest;
				_ai_gunner addWeapon _weapon;
				for "_j" from 1 to 6 do {_ai_gunner addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_gunner addItemToVest "HandGrenade";};
				_ai_gunner addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_gunner addItemToVest "Chemlight_green";};
				_ai_gunner addGoggles _facewear;
				_ai_gunner linkItem "tf_anprc148jem_3";
				_ai_gunner moveInGunner _heavy_vehicle;
				[_ai_gunner] join _vehiclegroup;
			};

			_free_cargo_positions = _heavy_vehicle emptyPositions "Cargo";
			for "_mc" from 0 to _free_cargo_positions do {
				_weapon = selectRandom tms_greenfor_standard_weapons_pool;
				_vest = selectRandom tms_greenfor_vests_pool;
				_uniform = selectRandom tms_greenfor_uniform_pool;
				_facewear = selectRandom tms_greenfor_facewear_pool;
				_ai_soldier = _vehiclegroup createUnit ["I_G_Soldier_F", _active_location, [], 100, "FORM"];
				_ai_soldier setskill 0.75;
				_special_weapon = selectRandom tms_greenfor_special_weapons_pool;
				_launcher = selectRandom tms_greenfor_launchers_pool;
				_side_weapon = selectRandom tms_greenfor_side_weapons_pool;
				_helmet = selectRandom tms_greenfor_helmets_pool;
				_backpack = selectRandom tms_greenfor_backpacks_pool;
				_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
				_magazines = selectRandom _magazines_pool;
				removeAllWeapons _ai_soldier;
				removeAllItems _ai_soldier;
				removeAllAssignedItems _ai_soldier;
				removeUniform _ai_soldier;
				removeVest _ai_soldier;
				removeBackpack _ai_soldier;
				removeHeadgear _ai_soldier;
				removeGoggles _ai_soldier;
				_ai_soldier addWeapon _weapon;
				_ai_soldier forceAddUniform _uniform;
				_ai_soldier addVest _vest;
				for "_j" from 1 to 6 do {_ai_soldier addItemToVest _magazines;};
				for "_j" from 1 to 2 do {_ai_soldier addItemToVest "HandGrenade";};
				_ai_soldier addItemToVest "SmokeShell";
				for "_j" from 1 to 2 do {_ai_soldier addItemToVest "Chemlight_green";};
				_ai_soldier addBackpack _backpack;
				_ai_soldier addHeadgear _helmet;
				_ai_soldier addGoggles _facewear;
				_ai_soldier linkItem "tf_anprc148jem_3";
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
