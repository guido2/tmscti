disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

{
    ctrlShow [_x, false];
} forEach _this;

_display = findDisplay 5000;
_craftlist = _display displayCtrl 2100;

_transportcraft1 = "CH-47 Chinook";
_craftlist lbAdd (_transportcraft1);
_craftlist lbSetData [0, "CH-47 Chinook"];

_transportcraft2 = "C-17 Globemaster III";
_craftlist lbAdd (_transportcraft2);
_craftlist lbSetData [1, "C-17 Globemaster III"];

_transportcraft3 = "Self Delivery (Jet)";
_craftlist lbAdd (_transportcraft3);
_craftlist lbSetData [2, "Self Delivery (Jet)"];









