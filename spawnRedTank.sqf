spawns = spawns + 1;

_m = selectRandom ["m0", "m1", "m2"];
_pos = (getMarkerPos _m) getpos [floor random 500, floor random 359];

hint format ["Spawn at %1.", _pos];

// Tank
_pos = (getMarkerPos _m) getpos [floor random 500, floor random 359];
_soldiers = ["O_APC_Tracked_02_cannon_F"];
_grp = [_pos, east, _soldiers] call BIS_fnc_spawnGroup;
_wp =_grp addWaypoint [getMarkerPos "mDest", 0];
_wp setWaypointType "SAD";

// Create marker

_markerName = Format ["m_%1", spawns];
_marker1 = createMarker[_markerName, _pos];
_markerName setMarkerShape "ICON";
_markerName setMarkerType "hd_dot";
_markerName setMarkerColor "ColorRed";
_markerName setMarkerText _markerName;
_markerName setMarkerAlpha 1;
