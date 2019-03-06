 if (!isNull curatorCamera) ExitWith {};
 [] spawn {
 uinameSpace setVariable ["tracking", false];
 publicVariable "tracking";
 //uiNameSpace setVariable ["SatLaserOn" , false]; toDo : make this optional
// publicVariable "SatLaserOn";
playSound "doublebip";
("BIS_layerStatic" call BIS_fnc_rscLayer) cutRsc ["RscStatic", "PLAIN"];
//waitUntil {isNull (uiNamespace getVariable "RscStatic_display")};
sleep 1;
//_cam = 'camera' camCreate (position player);
//camDestroy _cam;
player cameraEffect ['terminate','back'];
///added inv1.3

_camMRHSAT = uinameSpace getVariable "MRH_SATCAM";

_pip = missionNamespace getVariable "SelectedViewMode";
//added in 1.3
if (isNil "_pip") then {_pip =0};
_camMRHSAT cameraEffect ["internal","back","rttMRHSatelliteFeed"]; 
///added in 1.3 should fix mp pip issue
_camMRHSAT camCommit 0;
"rttMRHSatelliteFeed" setPiPEffect [_pip];
//end added

call MRH_fnc_SatInit;
call MRH_fnc_GlobalPipRefresh;
};

