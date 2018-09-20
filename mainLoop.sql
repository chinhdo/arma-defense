while {true} do {

    _redCount = {side _x == opfor} count allUnits;    

    if (_redCount < 100) then {
        [] execVM 'spawnRed.sqf';
        sleep 2;
    };


    _blueCount = {side _x == blufor} count allUnits;

    if ((_blueCount<40)) then {
        [] execVM 'spawnBlueHC.sqf';
        sleep 2;
    };

    hint format [" OPFOR : %1, BLUFOR: %2.", _redCount, _blueCount];

    sleep 2;
};