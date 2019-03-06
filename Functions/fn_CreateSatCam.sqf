if (isServer && isDedicated && !hasInterface) exitWith {};

_selectedPos = missionNamespace getVariable "MRHSatPos";
//_xresult = _selectedpos select 0;
//_yresult = _selectedpos select 1;
_camMRHSAT = "camera" camCreate _selectedPos;






_camMRHSAT setVectorDirAndUp [[0,0,-1],[0,1,0]]; 
//_camMRHSAT cameraEffect ["internal", "BACK"];//internal
_camMRHSAT camSetFov 1;
_camMRHSAT camCommit 0;
uiNameSpace setVariable ["MRH_SATCAM", _camMRHSAT];

