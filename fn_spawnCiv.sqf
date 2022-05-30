params["_pos", "_grp"];

//type of units

_sel = 5;
unit = format ["C_Man_casual_%1_F", _sel];

unit createUnit [_pos, _grp, "0 = [this] execVM 'civilians\fn_civLogic.sqf';"]