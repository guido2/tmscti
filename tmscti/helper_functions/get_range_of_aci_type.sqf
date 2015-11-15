_classname = _this select 0;

_out = false;

	{
	if((_x select 0) == _classname) then {_out = _x select 1;}
	} forEach tms_aci_types_west + tms_aci_types_east;

_out;
