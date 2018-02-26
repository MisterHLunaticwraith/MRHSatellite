 [] spawn {
 uinameSpace setVariable ["tracking", false];
 publicVariable "tracking";
 uiNameSpace setVariable ["SatLaserOn" , false];
 publicVariable "SatLaserOn";
playSound "doublebip";
("BIS_layerStatic" call BIS_fnc_rscLayer) cutRsc ["RscStatic", "PLAIN"];
//waitUntil {isNull (uiNamespace getVariable "RscStatic_display")};
sleep 1;
_cam = 'camera' camCreate (position player);
camDestroy _cam;
player cameraEffect ['terminate','back'];

call MRH_fnc_SatInit;};