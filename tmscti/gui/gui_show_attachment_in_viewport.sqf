disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

_display = findDisplay 5000;
_viewport = _display displayCtrl 101;
_infobox = _display displayCtrl 1010;

_attachmentkind = _this select 0;
_index = lbCurSel _attachmentkind;
_supply_item_data_string = lbData [_attachmentkind, _index];
_supply_item_data = call compile _supply_item_data_string;

//_3dmodel = _supply_item_data select 2; NEEDS TO BE RE-ACTIVATED FOR OBJECTS WITH WRONG P3D-PATH!
//_scalefactor = _supply_item_data select 3; //DOESN'T LOOK LIKE IT NEEDS TO BE DYNAMIC
//_transformfactor = _supply_item_data select 4; //DOESN'T LOOK LIKE IT NEEDS TO BE DYNAMIC
_scalefactor = 0.6;
_transformfactor = [1.175,0.25,0.15];

_item_name = _supply_item_data select 0;
_item_classname = _supply_item_data select 1;

_3dmodel = getText(configFile >> "CfgWeapons" >> _item_classname >> "model");

if ((count _3dmodel == 0) or (isnil "_3dmodel") or ( _3dmodel == "-1")) then { 

	hint "P3D-Paths missing!";

} else {

	_viewport ctrlSetModel _3dmodel;
	_viewport ctrlSetModelScale _scalefactor;
	_viewport ctrlSetModelDirAndUp [[0.65,1,0.0],[0,0,1]];
	_viewport ctrlSetPosition _transformfactor;
	};
	
_infobox ctrlSetText _item_name;