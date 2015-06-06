disableSerialization;

_type_list = _this select 0;
_selected_index = _this select 1;

_display = findDisplay 5000;
_object_list = _display displayCtrl 1502;

_selected_data = _type_list lbData _selected_index;
_items = call compile _selected_data;

lbClear _object_list;
{
	_object = call compile _x;
	_index = _object_list lbAdd (_object select 0);
	_object_list lbSetData [_index, _x];
} forEach _items;
