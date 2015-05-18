execVM "R3F_LOG\init.sqf";
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

spawnpositionwest = 0;

tms_init_base_container = compile loadFile "tmscti\init_base_container.sqf";

if(isServer) then {

    _starttruck1west = createVehicle ["B_Truck_01_transport_F", getMarkerPos "respawn_west", [], 15, "NONE"];

    _container = createVehicle ["Land_Cargo20_military_green_F", getMarkerPos "respawn_west", [], 15, "NONE"];


    [_container, "Established HQ", "M1130_HQ_unfolded_Base_EP1"] call tms_init_base_container;

};