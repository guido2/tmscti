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

// Load definitions of supply locations
call compile preprocessFileLineNumbers "tmscti\supply_locations.sqf";

// Load definitions of area control installations
call compile preprocessFileLineNumbers "tmscti\area_control_installations.sqf";

tms_init_base_container = compile preprocessFileLineNumbers "tmscti\init_base_container.sqf";
tms_init_area_control_installation_container = compile preprocessFileLineNumbers "tmscti\init_area_control_installation_container.sqf";
tms_get_nearest_object = compile preprocessFileLineNumbers "tmscti\helper_functions\get_nearest_object.sqf";
tms_get_nearest_supply_location = compile preprocessFileLineNumbers "tmscti\helper_functions\get_nearest_supply_location.sqf";
tms_activate_area_control_installation = compile preprocessFileLineNumbers "tmscti\activate_area_control_installation.sqf";

// TODO: Make configurable
setViewDistance 4000;
setObjectViewDistance [1800, 150];

if(isServer) then {
	[
		5*60, // seconds to delete dead bodies (0 means don't delete)
		10*60, // seconds to delete dead vehicles (0 means don't delete)
		20*60, // seconds to delete immobile vehicles (0 means don't delete)
		15*60, // seconds to delete dropped weapons (0 means don't delete)
		10*60, // seconds to deleted planted explosives (0 means don't delete)
		10*60 // seconds to delete dropped smokes/chemlights (0 means don't delete)
	] execVM 'repetitive_cleanup.sqf';

	_starttruck1west = createVehicle ["B_Truck_01_transport_F", getMarkerPos "respawn_west", [], 0, "NONE"];
	_starttruck1west setVariable ["side", west, true];
	_starttruck1west setVariable ["persistent",true];
	_hq_container_west = createVehicle ["Land_Cargo20_military_green_F", [getMarkerPos "respawn_west", 10, 90] call BIS_fnc_relPos, [], 0, "NONE"];
	_hq_container_west setVariable ["side", west, true];
	[_hq_container_west, "Established HQ", "M1130_HQ_unfolded_Base_EP1"] call tms_init_base_container;
	_flag_container_west = createVehicle ["Land_CargoBox_V1_F", [getMarkerPos "respawn_west", 20, 90] call BIS_fnc_relPos, [], 0, "NONE"];
	[_flag_container_west, "Flag_Red_F", "Flag", west] call tms_init_area_control_installation_container;

	_starttruck1east = createVehicle ["O_Truck_02_transport_F", getMarkerPos "respawn_east", [], 0, "NONE"];
	_starttruck1east setVariable ["side", east, true];
	_starttruck1east setVariable ["persistent",true];
	_hq_container_east = createVehicle ["Land_Cargo20_military_green_F", [getMarkerPos "respawn_east", 10, 90] call BIS_fnc_relPos, [], 0, "NONE"];
	_hq_container_east setVariable ["side", east, true];
	[_hq_container_east, "Established HQ", "BMP2_HQ_TK_unfolded_Base_EP1"] call tms_init_base_container;
	_flag_container_east = createVehicle ["Land_CargoBox_V1_F", [getMarkerPos "respawn_east", 20, 90] call BIS_fnc_relPos, [], 0, "NONE"];
	[_flag_container_east, "Flag_Blue_F", "Flag", east] call tms_init_area_control_installation_container;

	town_center_objects = [];
	victory_position = 0; // If this reaches 100, side west wins. If this reaches -100, side east wins
	mission_ended = false;

	[] execVM "tmscti\periodically_update_score.sqf";
};
