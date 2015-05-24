_container = _this select 0;
_params = _this select 3;
_building_name = _params select 0;
_building_class = _params select 1;

for "_i" from 0 to 5 do {
    player playmove "AinvPknlMstpSlayWnonDnon_medic";
    };

sleep 8;

_side = _container getVariable "side";
_position = getPos _container;

deleteVehicle _container;

_building = _building_class createVehicle _position;

[_side, _building] call BIS_fnc_addRespawnPosition;
_building setVariable ["side", west, true];

[
     [[_building, 50000, _side], "R3F_LOG\USER_FUNCT\init_creation_factory.sqf"],
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

[
    [_building,
        [format ["Request base supply %1", _building_name], {createDialog "HQSupply";} ]
    ],
    "addAction",
    true,
    true
] call BIS_fnc_MP;


