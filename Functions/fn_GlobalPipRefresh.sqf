/*
this function refreshes pip feed on every machine, function is ALREADY global, only execute localy.
eg.
call MRH_fnc_GlobalPipRefresh;
*/
[[],{
if (!isNull curatorCamera) ExitWith {};
if (ctrlShown ((findDisplay 9751) displayCtrl 1231)) ExitWith {};
_camMRHSAT = uinameSpace getVariable "MRH_SATCAM";
_pip = missionNamespace getVariable "SelectedViewMode";
//added in 1.3
if (isNil "_pip") then {_pip =0};
_camMRHSAT cameraEffect ["internal","back","rttMRHSatelliteFeed"]; 
///added in 1.3 should fix mp pip issue
_camMRHSAT camCommit 0;
"rttMRHSatelliteFeed" setPiPEffect [_pip]; 
}] RemoteExec ["Spawn", 0, true];
