// Red Tank
// _pos = (getMarkerPos "m2") getpos [floor random 250, floor random 250];
// _soldiers = ["O_MBT_02_cannon_F"];
// _grp = [_pos, east, _soldiers] call BIS_fnc_spawnGroup;
// _wp =_grp addWaypoint [getMarkerPos "m0", 0];
// _wp setWaypointType "SAD";

// Blue Tank
// _pos = (getMarkerPos "m1") getpos [floor random 250, floor random 250];
// _soldiers = ["B_MBT_01_cannon_F"];
// _grp = [_pos, west, _soldiers] call BIS_fnc_spawnGroup;
// _wp =_grp addWaypoint [getMarkerPos "m0", 0];
// _wp setWaypointType "SAD";

_vehicles = vehicles;
// hint format ["Vehicles: %1.", count _vehicles];
// diag_log format ["Vehicles: %1.",count _vehicles];
hintC format ["Vehicles: %1 .", count _vehicles];

{
	_x setVehicleAmmo 1;
	_x setDamage 0;
} foreach _vehicles;