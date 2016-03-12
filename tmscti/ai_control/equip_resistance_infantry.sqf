
_ai_soldier = _this select 0;
_iterations = _this select 1;
_weapon = selectRandom tms_greenfor_standard_weapons_pool;
_side_weapon = selectRandom tms_greenfor_side_weapons_pool;
_helmet = selectRandom tms_greenfor_helmets_pool;
_vest = selectRandom tms_greenfor_vests_pool;
_uniform = selectRandom tms_greenfor_uniform_pool;
_backpack = selectRandom tms_greenfor_backpacks_pool;
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

_ai_soldier addWeapon _weapon;
_ai_soldier forceAddUniform _uniform;
_ai_soldier addVest _vest;
for "_j" from 1 to 6 do {_ai_soldier addItemToVest _magazines;};
for "_j" from 1 to 2 do {_ai_soldier addItemToVest "HandGrenade";};
_ai_soldier addItemToVest "SmokeShell";
for "_j" from 1 to 2 do {_ai_soldier addItemToVest "Chemlight_green";};
_ai_soldier addBackpack _backpack;
_ai_soldier addHeadgear _helmet;
_ai_soldier addGoggles _facewear;
_ai_soldier linkItem "tf_anprc148jem_3";

// Chances of how often Special Weapons and Launchers will be spawned

if (_iterations == 4) then {
	_special_weapon = selectRandom tms_greenfor_special_weapons_pool;
	_special_weapon_magazine_pool = (configFile >> "CfgWeapons" >> _special_weapon >> "magazines") call BIS_fnc_getCfgData;
	_special_weapon_magazine = selectRandom _special_weapon_magazine_pool;
	removeAllWeapons _ai_soldier;
	for "_j" from 1 to 3 do {_ai_soldier addItemToBackpack _special_weapon_magazine;};
	_ai_soldier addWeapon _special_weapon;
};

if (_iterations == 5) then {
	_launcher = selectRandom tms_greenfor_launchers_pool;
	_launcher_magazines_pool = (configFile >> "CfgWeapons" >> _launcher >> "magazines") call BIS_fnc_getCfgData;
	_launcher_magazines = selectRandom _launcher_magazines_pool;
	for "_j" from 1 to 3 do {_ai_soldier addItemToBackpack _launcher_magazines;};
	_ai_soldier addWeapon _launcher;
};
