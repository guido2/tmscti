_container = _this select 0;
_params = _this select 3;
_installation_class = _params select 0;
_installation_name = _params select 1;

_town_center_object = [position _container, town_center_objects] call tms_get_nearest_object;

if (!(isNil '_town_center_object' or (_town_center_object distance _container) > 100)) then {
    for "_i" from 0 to 5 do {
        player playmove "AinvPknlMstpSlayWnonDnon_medic";
        };

    sleep 8;

    _side = _container getVariable "side";
    _position = getPos _container;

    deleteVehicle _container;

    _installation = _installation_class createVehicle _position;

    _installation setVariable ["side", _side, true];
    _installation setVariable ["active", false, true];

    [
        [_installation,
            ["Activate", "tmscti\activate_area_control_installation.sqf", nil, 1.5, false, true, "", "!(_target getVariable ""active"");"]
        ],
        "addAction",
        true,
        true
    ] call BIS_fnc_MP;
    }
else
    {
    systemChat "Cannot unpack area control installation: No town center found with 100 meters."
    };
