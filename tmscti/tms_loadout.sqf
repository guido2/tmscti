waitUntil {!isNull player};       //to prevent MP / JIP issues

_unit = _this select 0;
removeallweapons _unit;
removeallassigneditems _unit;
removeallcontainers _unit;
removeGoggles _unit;

if (side _unit == west) then {

	_unit forceaddUniform "rhs_uniform_cu_ocp";
	_unit addvest "rhsusf_iotv_ocp"; 
	_unit addheadgear "rhsusf_patrolcap_ocp"; 

	} else {
	_unit forceaddUniform "rhs_uniform_flora_patchless";
	_unit addvest "rhs_6b13_Flora"; 
	_unit addheadgear "rhs_fieldcap"; 
};

for "_i" from 1 to 3 do {_unit addItemToVest "ACE_fieldDressing";};
_unit addItemToVest "ACE_morphine";
_unit setSpeaker "ACE_NoVoice";
_unit addItem "ItemMap";
_unit addItem "ItemWatch";
_unit assignItem "ItemWatch";
_unit assignItem "ItemMap";
