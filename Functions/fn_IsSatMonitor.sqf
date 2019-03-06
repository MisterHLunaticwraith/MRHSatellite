if (isServer && !hasInterface) ExitWith {};

params ["_object"];
[_object] spawn {
params ["_object"];


//waituntil mission is initialized


waitUntil {(!isNull (findDisplay 46)) && alive player};
//waitUntil {time>1};
_object setObjectTexture [0, "\MRHSatellite\Paa\offline.paa"];
waitUntil {!isNull (uinameSpace getVariable "MRH_SATCAM")};//probably unnecessary
waitUntil {!(missionNamespace getVariable "MRHSatFirstInitCheck")};
if (!isNull curatorCamera) ExitWith {};
_camMRHSAT = uinameSpace getVariable "MRH_SATCAM";

_pip = missionNamespace getVariable "SelectedViewMode";
//added in 1.3
if (isNil "_pip") then {_pip =0};
_camMRHSAT cameraEffect ["internal","back","rttMRHSatelliteFeed"]; 
///added in 1.3 should fix mp pip issue
_camMRHSAT camCommit 0;
"rttMRHSatelliteFeed" setPiPEffect [_pip]; 
_object setObjectTexture [0, "#(argb,512,512,1)r2t(rttMRHSatelliteFeed,1.0)"];
};