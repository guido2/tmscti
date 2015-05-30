_close_buttons = _this select 0;
_open_buttons = _this select 1;

{
    ctrlShow [_x, false];
} forEach _close_buttons;

{
    ctrlShow [_x, true];
} forEach _open_buttons;

