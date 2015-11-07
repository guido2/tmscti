disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

if ( not isNil "tms_list_attachments_script") then {
	terminate tms_list_attachments_script;
	};

_display = findDisplay 5000;
_viewport = _display displayCtrl 101;
_infobox = _display displayCtrl 1010;

_index = lbCurSel 1502;
_supply_item_data_string = lbData [1502, _index];
_supply_item_data = call compile _supply_item_data_string;
//_3dmodel = _supply_item_data select 2; NEEDS TO BE RE-ACTIVATED FOR OBJECTS WITH WRONG P3D-PATH!
_scalefactor = _supply_item_data select 3;
_transformfactor = _supply_item_data select 4;
_item_name = _supply_item_data select 0;
_item_classname = _supply_item_data select 1;
_supplykind = _supply_item_data select 7;

if (_supplykind == "item") then {

_3dmodel = getText(configFile >> "CfgWeapons" >> _item_classname >> "model");

if ((count _3dmodel == 0) or (isnil "_3dmodel") or ( _3dmodel == "-1")) then { 

	hint "P3D-Paths missing!";

} else {

	_viewport ctrlSetModel _3dmodel;
	_viewport ctrlSetModelScale _scalefactor;
	_viewport ctrlSetModelDirAndUp [[0.65,1,0.05],[0,0,1]];
	_viewport ctrlSetPosition _transformfactor;
	};

} else {

_3dmodel = getText(configFile >> "CfgVehicles" >> _item_classname >> "model");

if ((count _3dmodel == 0) or (isnil "_3dmodel") or ( _3dmodel == "-1")) then { 

	hint "P3D-Paths missing!";

} else {

	_viewport ctrlSetModel _3dmodel;
	_viewport ctrlSetModelScale _scalefactor;
	_viewport ctrlSetModelDirAndUp [[0.65,1,0.05],[0,0,1]];
	_viewport ctrlSetPosition _transformfactor;
	};
};
	
_infobox ctrlSetText _item_name;


// Position: [X, z, Y]
//
//	EXAMPLES:
//
//	Transformation values for MRAPS
//	_viewport ctrlSetModelScale 0.035;
//	_viewport ctrlSetModelDirAndUp [[0.65,1,0.05],[0,0,1]];
//	_viewport ctrlSetPosition [1.15, 0.25, -0.005];
//
//	Transformation values for Fighter Jets
//	_viewport ctrlSetModelScale 0.014;
//	_viewport ctrlSetModelDirAndUp [[0.65,1,0.05],[0,0,1]];
//	_viewport ctrlSetPosition [1.15, 0.25, 0.2];
//
//	Transformation values for MBTs
//	_viewport ctrlSetModelScale 0.028;
//	_viewport ctrlSetModelDirAndUp [[0.65,1,0.05],[0,0,1]];
//	_viewport ctrlSetPosition [1.15, 0.25, -0.04];

if (_supplykind == "item") then {

	tms_list_attachments_script = [] execVM "tmscti\gui\list_attachments.sqf";
};
