if (!isNull curatorCamera) ExitWith {};
_camMRHSAT = uinameSpace getVariable "MRH_SATCAM";
_pip = missionNamespace getVariable "SelectedViewMode";

_TypeText = ((findDisplay 9751) displayCtrl 1207);
if (isNil "_pip") then {_pip = 0;_TypeText ctrlSetStructuredText parsetext "Normal";};
_camMRHSAT cameraEffect ["internal","back","rttMRHSatelliteFeed"]; 
"rttMRHSatelliteFeed" setPiPEffect [_pip]; 
((findDisplay 9751) displayCtrl 1201) ctrlSetText "#(argb,512,512,1)r2t(rttMRHSatelliteFeed,1.0)";
playSound "visionswitch";

//ctrlshow [1208, true];
[true] call MRH_fnc_ShowHide1208;
call MRH_fnc_GlobalPipRefresh;
