disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

{
    ctrlShow [_x, false];
} forEach _this;

_display = findDisplay 5000;
_craftlist = _display displayCtrl 2100;

//Helicopter drop tier III west
_transportcraft1 = "CH-47 Chinook";
_craftlist lbAdd (_transportcraft1);
_craftlist lbSetData [0, "CH-47 Chinook"];

//Airfield tier II west
_transportcraft2 = "C-17 Globemaster III";
_craftlist lbAdd (_transportcraft2);
_craftlist lbSetData [1, "C-17 Globemaster III"];

//Landing site tier III west
_transportcraft3 = "Landing Craft Air Cushion";
_craftlist lbAdd (_transportcraft3);
_craftlist lbSetData [2, "Landing Craft Air Cushion"];









