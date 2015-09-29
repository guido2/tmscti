execVM "R3F_LOG\init.sqf"; //R3F LOGISTIK SYSTEM
execVM "IgiLoad\IgiLoadInit.sqf"; //IGILOAD

call compile preprocessFileLineNumbers "tmscti\gui\defines_idcs.sqf";
call compile preprocessFileLineNumbers "tmscti\supply_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\assault_rifle_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\machine_gun_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\optic_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\bipod_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\magazine_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\railobject_definitions.sqf";
call compile preprocessFileLineNumbers "tmscti\items\silencer_definitions.sqf";

spawnpositionwest = 0;

tms_init_base_container = compile preprocessFileLineNumbers "tmscti\init_base_container.sqf";
tms_init_area_control_installation_container = compile preprocessFileLineNumbers "tmscti\init_area_control_installation_container.sqf";
tms_get_nearest_object = compile preprocessFileLineNumbers "tmscti\helper_functions\get_nearest_object.sqf";

if(isServer) then {

    _starttruck1west = createVehicle ["B_Truck_01_transport_F", getMarkerPos "respawn_west", [], 0, "NONE"];
    _starttruck1west setVariable ["side", west, true];
    _hq_container_west = createVehicle ["Land_Cargo20_military_green_F", [getMarkerPos "respawn_west", 10, 90]  call BIS_fnc_relPos, [], 0, "NONE"];
    _hq_container_west setVariable ["side", west, true];
    [_hq_container_west, "Established HQ", "M1130_HQ_unfolded_Base_EP1"] call tms_init_base_container;
    _flag_container_west = createVehicle ["Land_CargoBox_V1_F", [getMarkerPos "respawn_west", 20, 90] call BIS_fnc_relPos, [], 0, "NONE"];
    [_flag_container_west, "Flag_Red_F", "Flag", west] call tms_init_area_control_installation_container;

    victory_position = 0; // If this reaches 100, side west wins. If this reaches -100, side east wins
    town_center_objects = []; // A list of objects, defined in mission.sqm, that determine where towns that can be taken over are
    mission_ended = false;

	_spawnpos = getmarkerpos "hqdrop1";
	tms_master_gear_box = createVehicle ["B_supplyCrate_F", _spawnpos, [], 0, "NONE"];
	clearItemCargoGlobal tms_master_gear_box;
	clearMagazineCargoGlobal tms_master_gear_box;
	clearWeaponCargoGlobal tms_master_gear_box;
	clearBackpackCargoGlobal  tms_master_gear_box;
	
    [] execVM "tmscti\periodically_update_score.sqf";
};
