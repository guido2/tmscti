disableSerialization;

_attachmentkind = _this select 0;
_row_index = lbCurSel _attachmentkind;
_selected_data = lbData [_attachmentkind, _row_index];
_object_struct = call compile _selected_data;
_display = findDisplay 5000;
_cargo_list = _display displayCtrl 1507;

_cargolist_index = _cargo_list lbAdd (_object_struct select 0);
_cargo_list lbSetData [_cargolist_index, _selected_data];

_class_name = _object_struct select 1;

if (tms_master_gear_box canAdd _class_name) then {	
	tms_master_gear_box additemCargo [_class_name, 1] ;
	};

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
