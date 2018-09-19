spawns = spawns + 1;

_m = selectRandom ["m0", "m1", "m2"];
_pos = (getMarkerPos _m) getpos [floor random 100, floor random 100];

hint format ["Spawn at %1.", _pos];

_soldiers = ["O_Soldier_SL_F","O_Soldier_AR_F","O_Soldier_GL_F","O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_F","O_Soldier_LAT_F","O_medic_F"];
// _grp = [getMarkerPos _m, east, _soldiers] call BIS_fnc_spawnGroup;
_grp = [_pos, east, _soldiers] call BIS_fnc_spawnGroup;
_wp =_grp addWaypoint [getMarkerPos "mDest", 50];
_wp setWaypointType "SAD";
// _grp setCombatMode "RED";

// Tank
/*
_pos = (getMarkerPos _m) getpos [floor random 500, floor random 359];
_soldiers = ["O_APC_Tracked_02_cannon_F"];
_grp = [_pos, east, _soldiers] call BIS_fnc_spawnGroup;
_wp =_grp addWaypoint [getMarkerPos "mDest", 0];
_wp setWaypointType "MOVE";
*/

// Create marker

_markerName = Format ["m_%1", spawns];
_marker1 = createMarker[_markerName, _pos];
_markerName setMarkerShape "ICON";
_markerName setMarkerType "hd_dot";
_markerName setMarkerColor "ColorRed";
_markerName setMarkerText _markerName;
_markerName setMarkerAlpha 1;
