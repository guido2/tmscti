light_defense = [getMarkerPos "small", EAST, ["O_Soldier_TL_F", "O_Soldier_F", "O_Soldier_AR_F", "O_Soldier_AT_F", "O_Medic_F", "O_Soldier_GL_F"]] call BIS_fnc_spawnGroup; 
{_x allowFleeing 0} forEach units light_defense;

