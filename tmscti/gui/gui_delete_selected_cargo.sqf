_selectedobject = lbCurSel 1507; 

lbDelete [1507, _selectedobject];

_number_of_items = lbSize 1507;

clearItemCargo tms_master_gear_box;
clearMagazineCargo tms_master_gear_box;
clearWeaponCargo tms_master_gear_box;
clearBackpackCargo tms_master_gear_box;

_counter = 0;
_dynamic_index = 0;
while { _counter < _number_of_items } do {
	_item_factor_data_string = lbData [1507, _dynamic_index];
	_item_factor_data = call compile _item_factor_data_string;
	_supplykind = _item_factor_data select 7;
	_item_class_name = _item_factor_data select 1;

	if ( _supplykind == "item" ) then {
	
		if ( isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
		tms_master_gear_box addWeaponCargo [_item_class_name, 1] ; 
		} else {
		if ( isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
		tms_master_gear_box addMagazineCargo [_item_class_name, 1] ;
		} else {
		tms_master_gear_box additemCargo [_item_class_name, 1] ;};			
		};
	};
	_counter = _counter + 1;
	_dynamic_index = _dynamic_index + 1;
};

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
