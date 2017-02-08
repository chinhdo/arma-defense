{
    _found = false;
    if (( typeOf _x == "B_medic_F" )) then
    {
        hint "Found medic.";
        _dummy = [_x, units (group player)] execVM "scripts\automedic.sqf";
        _found = true;
    };

    if (_found) exitWith {};
}
forEach units group player;