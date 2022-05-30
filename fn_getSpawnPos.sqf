params["_blds"];

if(isNil "_blds") exitWith {false};
_bld = selectRandom _blds;
if(isNil "_bld") exitWith {false};
_allBldPos = [_bld] call BIS_fnc_buildingPositions;
if(isNil "_allBldPos") exitWith {false};
_pos = selectRandom _allBldPos;
if(isNil "_pos") exitWith {false};
_pos

