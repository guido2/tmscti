disableSerialization;

_row_index = lbCurSel 1502;
_selected_data = lbData [1502, _row_index];
_object_struct = call compile _selected_data;
_display = findDisplay 5000;
//_cargobar = _display displayCtrl 1008;
_cargo_list = _display displayCtrl 1507;
//_acceptbutton = _display displayCtrl 1600;

_cargolist_index = _cargo_list lbAdd (_object_struct select 0);
_cargo_list lbSetData [_cargolist_index, _selected_data];

//Attachments: Optics
_row_index_optics = lbCurSel 1503;

if (_row_index_optics > 0) then {

	_selected_data_optics = lbData [1503, _row_index_optics];
	_object_struct_optics = call compile _selected_data_optics;
	_cargolist_index_optics = _cargo_list lbAdd (_object_struct_optics select 0);
	_cargo_list lbSetData [_cargolist_index_optics, _selected_data_optics];
	_optic_class_name = _object_struct_optics select 1;

if (tms_master_gear_box canAdd _optic_class_name) then {	
	tms_master_gear_box additemCargo [_optic_class_name, 1] ;
		
	};
};
	
//Add gear to master cargo box
_index = lbCurSel 1502;
_supply_item_data_string = lbData [1502, _index];
_supply_item_data = call compile _supply_item_data_string;
_item_class_name = _supply_item_data select 1;

if (tms_master_gear_box canAdd _item_class_name) then {

	if ( isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
		tms_master_gear_box addWeaponCargo [_item_class_name, 1] ;
	}else{
		if ( isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
        tms_master_gear_box addMagazineCargo [_item_class_name, 1] ;
    }else{
         tms_master_gear_box additemCargo [_item_class_name, 1] ;
   
   };
};  

} else {

// Hier muss eine Abfrage rein ob weitere Boxen mit dem selektierten Vehikel gespawned werden können. Ansonsten:

   hint "Your selected items exceed the cargo space of the current supply box. The selected transport vehicle can not carry any more supply boxes!";
};
//_items_in_masterbox = itemCargo tms_master_gear_box;
//_weapons_in_masterbox = weaponsItemsCargo tms_master_gear_box;
//_number_of_items_in_masterbox = count _items_in_masterbox; 
//_number_of_weapons_in_masterbox = count _weapons_in_masterbox; 

//_total_masterbox_cargo = _number_of_items_in_masterbox + _number_of_weapons_in_masterbox;

//if (itemCargo _total_masterbox_cargo > 0) then {

//_cargobar progressSetPosition 0.166;
//_acceptbutton ctrlEnable true;
//};
//WIP WIP WIP

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
	

	
	

