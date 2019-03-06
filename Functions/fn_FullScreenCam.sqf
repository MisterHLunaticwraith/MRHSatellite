[] spawn {
if (!isNull curatorCamera) ExitWith {};
_camMRHSAT = uinameSpace getVariable "MRH_SATCAM";
//_pos = getPos _cam;

closedialog 0;
("BIS_layerStatic" call BIS_fnc_rscLayer) cutRsc ["RscStatic", "PLAIN"];
//waitUntil {isNull (uiNamespace getVariable "RscStatic_display")};
//sleep 1;
/////
//_camMRHSAT = "camera" camCreate _pos;
//[_xresult,_yresult,300];

//_camtarget = "camera" camCreate (camMRHSAT modelToWorld [0,0.1,-300]);
//_camMRHSAT camSetTarget _camtarget;
_camMRHSAT setVectorDirAndUp [[0,0,-1],[0,1,0]]; //cam camcommit 0;
_camMRHSAT cameraEffect ["internal", "BACK"];//editedin v1.3 if notworking reverse
//_camMRHSAT cameraEffect ["internal", "BACK","rttMRHSatelliteFeed"];//editedin v1.3 if notworking reverse
_camMRHSAT camSetFov 1;
_camMRHSAT camCommit 0;
//missionNamespace setVariable ["MRH_SATCAM", camMRHSAT];
//publicVariable "MRH_SATCAM";
//missionNamespace setVariable ["MRH_SATCAMTARGET", _camtarget];
showCinemaBorder false;
/////////
_legacy = missionNamespace getVariable "SelectedViewMode";
if (isNil "_legacy") then {_legacy = 0; };
if (_legacy == 0) then{_legacy = 0;};
if (_legacy == 2) then{_legacy = 1;};
if (_legacy == 7) then{_legacy = 2;};
[_legacy] call MRH_fnc_SelectViewModeFullscreen;

////////////////////////////////////////////////////////
_handle = createdialog "MRHSatelliteFullSCreen";
call MRH_fnc_SetSatRange;
_ctrlCOMBO = ((findDisplay 9751) displayCtrl 2100);
_ctrlCOMBO lbadd "Normal";
lbSetData [2100, 0, 0];

_ctrlCOMBO lbadd localize "STR_MRH_FLIRWHOT";
lbSetData [2100, 1, 1];

_ctrlCOMBO lbadd localize "STR_MRH_FLIRBHOT";
lbSetData [2100, 2, 2]; 
call MRH_fnc_Compass;
call MRH_fnc_ElevationAndGrid;

call MRH_fnc_GlobalPipRefresh;
_isTracking = missionNameSpace getVariable "MRH_Follow_tracking";
if (isNil "_isTracking")then {_isTracking = false;};
if (_isTracking) then {
_currentlyTrackedTarget = 
missionNameSpace getVariable "MRH_CurrentlyTrackedTarget";
[_currentlyTrackedTarget] call MRH_fnc_TrackingTarget;
};
_isLasering = missionNameSpace getVariable "SatLaserOn";
if (isNil "_isLasering") then {_isLasering = false};
if (_isLasering) then {ctrlshow [1270, true];}


};