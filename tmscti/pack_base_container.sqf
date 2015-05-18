_building = _this select 0;
_params = _this select 3;
_building_name = _params select 0;
_building_class = _params select 1;
_respawnname = _params select 2;

for "_i" from 0 to 5 do {
    player playmove "AinvPknlMstpSlayWnonDnon_medic";
    };

sleep 8;

_side = side _building;
_position = getPos _building;

deleteVehicle _building;
deleteMarker _respawnname;

_container = "Land_Cargo20_military_green_F" createVehicle _position;
[_container, _building_name, _building_class] call tms_init_base_container;