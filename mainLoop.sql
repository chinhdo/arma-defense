while {true} do {

    _redCount = {side _x == opfor} count allUnits;    

    if (_redCount < 200) then {
        [] execVM 'spawnRed.sqf';
        sleep 2;
    };


    _blueCount = {side _x == blufor} count allUnits;

    if ((_blueCount < 50)) then {
        [] execVM 'spawnBlueHC.sqf';
        sleep 2;
    };

    hint format [" OPFOR : %1, BLUFOR: %2.", _redCount, _blueCount];

    sleep 2;
};