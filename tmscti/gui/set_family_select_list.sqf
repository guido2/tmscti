disableSerialization;
_items = _this select 0;

_display = findDisplay 5000;
_list = _display displayCtrl 1500;
lbClear _list;

{
	_side = _x select 2;
	if (_side == side player) then {
		_index = _list lbAdd (_x select 0);
		_list lbSetData [_index, _x select 1];
		};
} forEach _items;
