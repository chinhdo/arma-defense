_soldiers = ["B_Soldier_F", "B_Soldier_F", "B_Soldier_AR_F", "B_Soldier_AR_F","B_Soldier_GL_F","B_Soldier_GL_F","B_Soldier_GL_F"];
_grp = [getMarkerPos "mStart", west, _soldiers] call BIS_fnc_spawnGroup;
(units _grp) join (group player);