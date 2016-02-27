disableSerialization;

_row_index = lbCurSel 1502;
_selected_data = lbData [1502, _row_index];
_object_struct = call compile _selected_data;
_display = findDisplay 5000;
_cargo_list = _display displayCtrl 1507;

_itemtype = _object_struct select 7;

if (_itemtype == "gear") then {
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
	};

	//Attachments: Railobjects
	_row_index_robjects = lbCurSel 1504;

	if (_row_index_robjects > 0) then {
		_selected_data_robjects = lbData [1504, _row_index_robjects];
		_object_struct_robjects = call compile _selected_data_robjects;
		_cargolist_index_robjects = _cargo_list lbAdd (_object_struct_robjects select 0);
		_cargo_list lbSetData [_cargolist_index_robjects, _selected_data_robjects];
		_robjects_class_name = _object_struct_robjects select 1;
	};

	//Attachments: Bipods
	_row_index_bipodobjects = lbCurSel 1505;

	if (_row_index_bipodobjects > 0) then {
		_selected_data_bipodobjects = lbData [1505, _row_index_bipodobjects];
		_object_struct_bipodobjects = call compile _selected_data_bipodobjects;
		_cargolist_index_bipodobjects = _cargo_list lbAdd (_object_struct_bipodobjects select 0);
		_cargo_list lbSetData [_cargolist_index_bipodobjects, _selected_data_bipodobjects];
		_bipodobjects_class_name = _object_struct_bipodobjects select 1;
	};

	//Attachments: Silencer
	_row_index_silencerobjects = lbCurSel 1506;

	if (_row_index_silencerobjects > 0) then {
		_selected_data_silencerobjects = lbData [1506, _row_index_silencerobjects];
		_object_struct_silencerobjects = call compile _selected_data_silencerobjects;
		_cargolist_index_silencerobjects = _cargo_list lbAdd (_object_struct_silencerobjects select 0);
		_cargo_list lbSetData [_cargolist_index_silencerobjects, _selected_data_silencerobjects];
		_silencerobjects_class_name = _object_struct_silencerobjects select 1;
	};

	//Attachments: Magazines
	_row_index_magazineobjects = lbCurSel 1508;

	if (_row_index_magazineobjects > 0) then {
		_selected_data_magazineobjects = lbData [1508, _row_index_magazineobjects];
		_object_struct_magazineobjects = call compile _selected_data_magazineobjects;
		_cargolist_index_magazineobjects = _cargo_list lbAdd (_object_struct_magazineobjects select 0);
		_cargo_list lbSetData [_cargolist_index_magazineobjects, _selected_data_magazineobjects];
		_magazineobjects_class_name = _object_struct_magazineobjects select 1;
};

} else {
    _cargolist_index = _cargo_list lbAdd (_object_struct select 0);
    _cargo_list lbSetData [_cargolist_index, _selected_data];
};

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
