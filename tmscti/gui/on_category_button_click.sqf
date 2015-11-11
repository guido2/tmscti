disableSerialization;

_close_buttons = _this select 0;
_open_buttons = _this select 1;

_display = findDisplay 5000;
_family_list = _display displayCtrl 1500;
_type_list = _display displayCtrl 1501;
_object_list = _display displayCtrl 1502;
_attachlist1 = _display displayCtrl 1503;
_attachlist2 = _display displayCtrl 1504;
_attachlist3 = _display displayCtrl 1505;
_attachlist4 = _display displayCtrl 1508;
_attachlist5 = _display displayCtrl 1509;
_attachlist6 = _display displayCtrl 1506;

lbClear _family_list;
lbClear _type_list;
lbClear _object_list;
lbClear _attachlist1;
lbClear _attachlist2; 
lbClear _attachlist3;
lbClear _attachlist4;
lbClear _attachlist5;
lbClear _attachlist6;

{
    ctrlShow [_x, false];
} forEach _close_buttons;

{
    ctrlShow [_x, true];
} forEach _open_buttons;
