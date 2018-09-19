while {true} do {   
    _redCount = {side _x == opfor} count allUnits;
    hint format ["Num OPFOR units: %1.", _redCount];

    if ((_redCount<50)) then {
        [] execVM 'spawnRed.sqf';
    };

    sleep 2;

    _blueCount = {side _x == blufor} count allUnits;
    hint format ["Num BLUEFOR units: %1.", _blueCount];

    if ((_blueCount<40)) then {
        [] execVM 'spawnBlueHC.sqf';
    };

    sleep 10;
};