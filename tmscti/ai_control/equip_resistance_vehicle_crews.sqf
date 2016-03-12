
_ai_soldier = _this;
_weapon = selectRandom tms_greenfor_crew_weapons_pool;
_vest = selectRandom tms_greenfor_vests_pool;
_uniform = selectRandom tms_greenfor_uniform_pool;
_facewear = selectRandom tms_greenfor_facewear_pool;
_magazines_pool = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;
_magazines = selectRandom _magazines_pool;

removeAllWeapons _ai_soldier;
removeAllItems _ai_soldier;
removeAllAssignedItems _ai_soldier;
removeUniform _ai_soldier;
removeVest _ai_soldier;
removeBackpack _ai_soldier;
removeHeadgear _ai_soldier;
removeGoggles _ai_soldier;

_ai_soldier forceAddUniform _uniform;
_ai_soldier addVest _vest;
_ai_soldier addWeapon _weapon;
for "_j" from 1 to 6 do {_ai_soldier addItemToVest _magazines;};
for "_j" from 1 to 2 do {_ai_soldier addItemToVest "HandGrenade";};
_ai_soldier addItemToVest "SmokeShell";
for "_j" from 1 to 2 do {_ai_soldier addItemToVest "Chemlight_green";};
_ai_soldier addGoggles _facewear;
_ai_soldier linkItem "tf_anprc148jem_3";
