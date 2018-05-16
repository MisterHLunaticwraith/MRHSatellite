params ["_selected"];

_viewMode = 0;
disableSerialization;
_TypeText = ((findDisplay 9751) displayCtrl 1207);
if (_selected == 0) then{_viewMode = 0; _TypeText ctrlSetStructuredText parsetext "Normal";};
if (_selected == 1) then{_viewMode = 2; _TypeText ctrlSetStructuredText parsetext "FLIR WHOT";};
if (_selected == 2) then{_viewMode = 7; _TypeText ctrlSetStructuredText parsetext "FLIR BHOT";};

missionNamespace setVariable ["SelectedViewMode", _viewMode];
publicVariable "SelectedViewMode";
call MRH_fnc_DisplayCam;
