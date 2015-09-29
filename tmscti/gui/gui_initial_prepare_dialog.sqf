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

_transportcraft4 = "Self Delivery (Helicopter)";
_craftlist lbAdd (_transportcraft4);
_craftlist lbSetData [3, "Self Delivery (Helicopter)"];

_transportcraft5 = "D-41 Transport Ship";
_craftlist lbAdd (_transportcraft5);
_craftlist lbSetData [4, "D-41 Transport Ship"];

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
