params ["_input"];

_x = _input select 2;
_y = _input select 3;
_ctrl = ((findDisplay 9751) displayCtrl 1777);
_selectedpos = _ctrl ctrlMapScreenToWorld [_x,_y];
missionNamespace setVariable ["RequestedSatPos", _selectedpos];
publicVariable "RequestedSatPos";
[_selectedpos] call MRH_fnc_CalculateTime;
