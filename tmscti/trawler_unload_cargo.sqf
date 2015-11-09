_trawler = _this select 0;
_rtb_pos = _this select 1;
_deploypos = getmarkerpos "dock1";
_dockheight = 6;

_attached_cargo = attachedObjects _trawler;

_cargo = _attached_cargo select 0;
_cargo setPosASL [_deploypos select 0, _deploypos select 1, _dockheight];
detach _cargo;
hint 'Shipment discharged';

_number_of_elements = count _attached_cargo;

if (_number_of_elements < 1) then {
	_trawler removeAction 0;
	};
