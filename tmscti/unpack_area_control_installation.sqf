_container = _this select 0;
_params = _this select 3;
_installation_class = _params select 0;
_installation_name = _params select 1;

// TODO: Use any of town location, victory location, supply location, special location
_town_center_object = [position _container, town_center_objects] call tms_get_nearest_object;
_supply_location = call compile ([position _container] call tms_get_nearest_supply_location);
_supply_location_position = getMarkerPos (_supply_location select 1);

_aci_range = [_installation_class] call tms_get_range_of_aci_type;

if ((!(isNil '_town_center_object' or (_town_center_object distance _container) > _aci_range)) or
	(!(isNil '_supply_location' or (_supply_location_position distance _container) > _aci_range))) then {
	for "_i" from 0 to 5 do {
		player playmove "AinvPknlMstpSlayWnonDnon_medic";
		};

	sleep 8;

	_side = _container getVariable "side";
	_position = getPos _container;

	deleteVehicle _container;

	_installation = _installation_class createVehicle _position;
	_installation setVariable ["side", _side, true];
	_installation call tms_activate_area_control_installation;
	}
else
	{
	systemChat format ["Cannot unpack area control installation: No town center found within %1 meters.", _aci_range];
	};
