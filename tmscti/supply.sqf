disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

_display = findDisplay 5000;
_list = _display displayCtrl 1500;

lbClear _list;

_supplyobject1 = "Basecontainer";
_list lbAdd (_supplyobject1);

_list lbSetData [0, "Land_Cargo20_military_green_F"];
