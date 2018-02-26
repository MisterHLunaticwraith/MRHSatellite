_legacy = missionNamespace getVariable "SelectedViewMode";
if (isNil "_legacy") then {_legacy = 0; };
if (_legacy == 0) then{_legacy = 0;};
if (_legacy == 2) then{_legacy = 1;};
if (_legacy == 7) then{_legacy = 2;};
[_legacy] call MRH_fnc_SelectViewMode; 


ctrlShow [5001, false];
ctrlShow [1600, true];
ctrlShow [1601, true];
