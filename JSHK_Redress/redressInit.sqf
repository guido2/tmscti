/*////////////////////////////////////

Author: J.Shock

Script File: redressInit.sqf

Parameters:
	1- Side (EAST, WEST, CIV, GUER) ~ default: EAST
	2- Use of special units (true/false) ~ default: true
	3- Check for spawned units (true/false) ~ default: false
	
Description: Initializes all variables needed for redressing process.
			 Also excludes the units that need not be redressed, as 
			 defined by the user in: _indvUnitExclude and _grpUnitExculde.
			 Contains the gear/loadout arrays to be defined by user.

Return: None

**DISCLAIMER**
Do not remove the header from this file. Any reproduced portions of this code
must include credits to the author (J.Shock).

*////////////////////////////////////


_sideToRedress = [_this, 0, INDEPENDENT, [INDEPENDENT]] call BIS_fnc_param;
_specialUnits = [_this, 1, true, [true]] call BIS_fnc_param;
_continuous = [_this, 2, false, [true]] call BIS_fnc_param;


//Need to exclude certain units/groups, fill out the below arrays!
//-----------------------------
_indvUnitExclude = [];//<<Put individual unit's variable names here.
_grpUnitExculde = [];//<<Put the group leader's variable names here.
_factionExclusion = [];//<<Put faction classnames here
//-----------------------------


//Gear classes names go below!
//-----------------------------
JSHK_weaponArr = ["arifle_Mk20_plain_F","CUP_arifle_FNFAL","arifle_Mk20_GL_plain_F","CUP_arifle_FNFAL_railed","arifle_Mk20C_plain_F","ej_u100old","Ej_u100","ej_u100sb","ej_u100old30","ej_launch_TitanDAT_I","hgun_PDW2000_F"];
JSHK_uniformArr = ["U_IG_Guerilla3_1","U_IG_Guerilla3_2","U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_leader","U_C_Poor_1","U_C_HunterBody_grn","U_C_Poloshirt_tricolour","VTN_U_ABIBAS3","VTN_U_ABIBAS9","VTN_U_ABIBAS5","VTN_U_ABIBAS7","U_C_Poloshirt_salmon","U_C_Poloshirt_blue","U_C_Poloshirt_redwhite"];
JSHK_vestArr = ["V_BandollierB_khk", "Vest_V_BandollierB_rgr", "Vest_V_Chestrig_rgr"];
JSHK_headArr = ["H_Shemag_olive","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Hat_camo","H_Cap_red","H_Bandanna_blu","H_Bandanna_surfer_blk","H_Cap_grn_BI","H_Hat_tan","H_Hat_brown","H_Hat_checker","H_Hat_blue","H_Cap_surfer"];
JSHK_goggleArr = ["G_Bandanna_beast","G_Sport_BlackWhite","G_Shades_Black","G_Bandanna_sport","G_Bandanna_aviator","G_Spectacles_Tinted","G_Lady_Blue","G_Squares","G_Sport_Greenblack","G_Sport_Red"];
JSHK_backpackArr = ["B_FieldPack_cbr","B_OutdoorPack_tan"];
//-----------------------------


//Special Units Classnames
//-----------------------------
JSHK_ATunits = ["O_Soldier_AT_F","I_Soldier_AT_F","B_Soldier_AT_F"];
JSHK_Medicalunits = ["O_medic_F","I_medic_F","B_medic_F"];
JSHK_AAunits = ["O_Soldier_AA_F","I_Soldier_AA_F","B_Soldier_AA_F"];
//-----------------------------



/////***************\\\\\


// Leave the rest ALONE! \\
	

/////***************\\\\\

_units = [];

{
	_currentUnit = _x; 
	if ((side _currentUnit isEqualTo _sideToRedress) &&
	   {({_currentUnit in (units group _x)}count _grpUnitExculde isEqualTo 0)} &&
	   {!(_currentUnit in _indvUnitExclude)} &&
	   {!(_currentUnit getVariable ["JSHK_doneRedress",false])}) then 
	{ 
		_units set [count _units, _currentUnit];
	}
	else
	{
		if (({_currentUnit in (units group _x)}count _grpUnitExculde > 0) || (_currentUnit in _indvUnitExclude) || ((faction _currentUnit) in _factionExclusion)) then
		{
			_currentUnit setVariable ["JSHK_doneRedress",true];
		};
	};
}forEach allUnits;

[_units,_specialUnits,_sideToRedress,_continuous,_factionExclusion] call JSHK_fnc_Redress;

diag_log "Shock's Redressing Script Initialized.";