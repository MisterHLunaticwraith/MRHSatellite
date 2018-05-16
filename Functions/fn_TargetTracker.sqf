params ["_clicked"];
uinameSpace setVariable ["tracking", false];
publicVariable "tracking";
/////trackingtextanim

////end
_x = _clicked select 2;
_y = _clicked select 3;


_pos = screenToWorld [_x,_y];

_list = [];
{
_dist = _x distance _pos;
if (_dist < 5) then {_list pushBack _x;};

} forEach allunits;
//copytoclipboard str _list;
_selectedTarget= _list select 0;
if (isNil "_selectedTarget") ExitWith {ctrlShow [1789, false]; playSound "notarget";};
missionNamespace setVariable ["MRH_CurrentlyTrackedTarget", _selectedTarget, true];
missionNamespace setVariable ["MRH_Follow_tracking", true, true];
ctrlShow [1789, false];
[_selectedTarget] call MRH_fnc_TrackingTarget;
