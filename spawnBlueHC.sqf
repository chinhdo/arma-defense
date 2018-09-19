_soldiers = ["B_Soldier_SL_F","B_Soldier_AR_F","B_Soldier_GL_F","B_Soldier_F","B_Soldier_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_Soldier_LAT_F","B_medic_F"];
_grp = [getMarkerPos "mStart", west, _soldiers] call BIS_fnc_spawnGroup;
player hcSetGroup [_grp];

// null = [_grp, (getMarkerPos "mPatrol"), 250] call BIS_fnc_taskPatrol;

_wp =_grp addWaypoint [getMarkerPos "mDest", 250];
_wp setWaypointType "SAD";