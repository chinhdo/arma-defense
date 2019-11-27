_soldiers = ["B_medic_F"];
_grp = [getMarkerPos "mStart", west, _soldiers] call BIS_fnc_spawnGroup;
(units _grp) join (group player);