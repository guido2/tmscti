disableSerialization;

_type_list = _this select 0;
_selected_index = _this select 1;

_display = findDisplay 5000;
_object_list = _display displayCtrl 1502;

_attachlist1 = _display displayCtrl 1503;
_attachlist2 = _display displayCtrl 1504;
_attachlist3 = _display displayCtrl 1505;
_attachlist4 = _display displayCtrl 1508;
_attachlist5 = _display displayCtrl 1509;
_attachlist6 = _display displayCtrl 1506;

lbClear _attachlist1;
lbClear _attachlist2; 
lbClear _attachlist3;
lbClear _attachlist4;
lbClear _attachlist5;
lbClear _attachlist6;

_selected_data = _type_list lbData _selected_index;
_items = call compile _selected_data;

_supply_location_type = tms_current_supply_location select tms_sl_cols_type;

_available_delivery_modes = [];

lbClear _object_list;
	{
	_object = call compile _x;
	if (_supply_location_type in (_object select 8)) then {
		_index = _object_list lbAdd (_object select 0);
		_gear = _object select 1;
		_icon_v = getText (configFile / "CfgVehicles" / _gear / "picture");
		_icon_w = getText (configFile / "CfgWeapons" / _gear / "picture");
		_object_list lbSetData [_index, _x];

		_object_list lbSetPicture [_index, _icon_v];
		_object_list lbSetPicture [_index, _icon_w];
		_object_list lbSetPictureColor [_index, [1, 1, 1, 1]];
		}
	} forEach _items;
