disableSerialization;

_family_list = _this select 0;
_selected_index = _this select 1;

hint format ["index: %1", _selected_index];

_display = findDisplay 5000;
_type_list = _display displayCtrl 1501;

_selected_data = _family_list lbData _selected_index;
_items = call compile _selected_data;

lbClear _type_list;
{
	_index = _type_list lbAdd (_x select 0);
	_type_list lbSetData [_index, _x select 1];
} forEach _items;
