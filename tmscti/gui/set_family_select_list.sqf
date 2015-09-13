disableSerialization;
_items = _this select 0;

_display = findDisplay 5000;
_list = _display displayCtrl 1500;
lbClear _list;

_type_list = _display displayCtrl 1501;
_object_list = _display displayCtrl 1502;
_attachlist1 = _display displayCtrl 1503;
_attachlist2 = _display displayCtrl 1504;
_attachlist3 = _display displayCtrl 1505;
_attachlist4 = _display displayCtrl 1508;
_attachlist5 = _display displayCtrl 1509;
_attachlist6 = _display displayCtrl 1506;

lbClear _type_list;
lbClear _object_list;
lbClear _attachlist1;
lbClear _attachlist2; 
lbClear _attachlist3;
lbClear _attachlist4;
lbClear _attachlist5;
lbClear _attachlist6;

{
	_side = _x select 2;
	if (_side == side player) then {
		_index = _list lbAdd (_x select 0);
		_list lbSetData [_index, _x select 1];
		};
} forEach _items;
