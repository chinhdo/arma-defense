spawns = 0;

if (isServer) then
{
    player addaction ["Spawn Red", "spawnRed.sqf"];
    player addaction ["Spawn Blue", "spawnBlue.sqf"];
    player addaction ["Spawn Blue HC", "spawnBlueHC.sqf"];
    player addaction ["Automate Medic", "nextMedic.sqf"];

    ammo1 addaction ["Open Virtual Arsenal", "arsenalbox.sqf"];
    setViewDistance 4000;
    [] execVM 'repetitive_cleanup.sqf';
};
