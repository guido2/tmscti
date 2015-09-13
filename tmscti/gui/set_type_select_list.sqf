disableSerialization;

_family_list = _this select 0;
_selected_index = _this select 1;

_display = findDisplay 5000;
_type_list = _display displayCtrl 1501;

_object_list = _display displayCtrl 1502;
_attachlist1 = _display displayCtrl 1503;
_attachlist2 = _display displayCtrl 1504;
_attachlist3 = _display displayCtrl 1505;
_attachlist4 = _display displayCtrl 1508;
_attachlist5 = _display displayCtrl 1509;
_attachlist6 = _display displayCtrl 1506;

lbClear _object_list;
lbClear _attachlist1;
lbClear _attachlist2; 
lbClear _attachlist3;
lbClear _attachlist4;
lbClear _attachlist5;
lbClear _attachlist6;

_selected_data = _family_list lbData _selected_index;
_items = call compile _selected_data;

lbClear _type_list;
{
	_index = _type_list lbAdd (_x select 0);
	_type_list lbSetData [_index, _x select 1];
} forEach _items;
