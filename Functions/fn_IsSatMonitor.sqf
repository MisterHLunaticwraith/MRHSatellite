params ["_object"];
_camMRHSAT = player getVariable "SATCAM";
_pip = missionNamespace getVariable "SelectedViewMode";
_camMRHSAT cameraEffect ["internal","back","rttMRHSatelliteFeed"]; 
"rttMRHSatelliteFeed" setPiPEffect [_pip]; 
_object setObjectTexture [0, "#(argb,512,512,1)r2t(rttMRHSatelliteFeed,1.0)"];
