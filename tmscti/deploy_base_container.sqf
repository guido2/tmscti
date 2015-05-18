_container = _this select 0;
_params = _this select 3;
_building_name = _params select 0;
_building_class = _params select 1;

for "_i" from 0 to 5 do {
    player playmove "AinvPknlMstpSlayWnonDnon_medic";
    };

sleep 8;

_side = side _container;
_position = getPos _container;

deleteVehicle _container;

_building = _building_class createVehicle _position;
spawnpositionwest = spawnpositionwest +1;
_respawnname = format ["respawn_west%1", spawnpositionwest];
_respawnpos = createMarker [_respawnname, getPos _building];
_respawnpos setMarkerShape "ICON";
_respawnpos setMarkerType "b_hq";

[
    [
        [_building, _respawnname],
        "tmscti\server\register_spawn_building_destroyed_handler.sqf"
    ],
    "BIS_fnc_execVM",
    true
] call BIS_fnc_MP;

[
     [[_building, 50000, west], "R3F_LOG\USER_FUNCT\init_creation_factory.sqf"],
     "BIS_fnc_execVM",
     true,
     true
] call BIS_fnc_MP;

[
    [_building,
        [format ["<t color='#FF0000'>Pack %1</t>", _building_name], "tmscti\pack_base_container.sqf", [_building_name, _building_class, _respawnname]]
    ],
    "addAction",
    true,
    true
] call BIS_fnc_MP;