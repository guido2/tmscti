lbClear 1507;

_display = findDisplay 5000;
_cargobar = _display displayCtrl 1008;
_acceptbutton = _display displayCtrl 1600;

_cargobar progressSetPosition 0;
_cargobar ctrlSetTextColor [0.456863,0.356863,0.119608,1];
_acceptbutton ctrlEnable false;

clearItemCargo tms_master_gear_box;
clearMagazineCargo tms_master_gear_box;
clearWeaponCargo tms_master_gear_box;
clearBackpackCargo tms_master_gear_box;
