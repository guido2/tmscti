disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

_display = findDisplay 5000;
_viewport = _display displayCtrl 101;

_index = lbCurSel 1502;
_supply_item_data_string = lbData [1502, _index];
_supply_item_data = call compile _supply_item_data_string;
_3dmodel = _supply_item_data select 2;
_scalefactorstring = _supply_item_data select 3;
_scalefactor = parseNumber _scalefactorstring;
_Ypositionstring = _supply_item_data select 4;
_Yposition = parseNumber _Ypositionstring;

if ((count _3dmodel == 0) or (isnil "_3dmodel") or ( _3dmodel == "-1")) then { 

	hint "P3D-Paths missing!";

} else {

	_viewport ctrlSetModel _3dmodel;
	_viewport ctrlSetModelScale _scalefactor;
	_viewport ctrlSetModelDirAndUp [[0.65,1,0.05],[0,0,1]];
	_viewport ctrlSetPosition [1.15, 0.25, _Yposition];
	};

// Position: [X, z, Y]
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


