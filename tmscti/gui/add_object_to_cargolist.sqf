disableSerialization;

_row_index = lbCurSel 1502;
_selected_data = lbData [1502, _row_index];
_object_struct = call compile _selected_data;

_display = findDisplay 5000;
_cargo_list = _display displayCtrl 1507;

_cargolist_index = _cargo_list lbAdd (_object_struct select 0);
_cargo_list lbSetData [_cargolist_index, _selected_data];

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
