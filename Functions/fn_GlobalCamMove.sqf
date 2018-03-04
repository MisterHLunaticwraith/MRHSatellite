params ["_caller"];
if (_caller == player) ExitWith {};
_cam = player getVariable "MRH_SATCAM";
_sentCoordinates = getPos _cam;



[[_sentCoordinates],{
params ["_sentCoordinates"];
if (isServer && isDedicated && !hasInterface) exitWith {};
_cam = player getVariable "MRH_SATCAM";
_cam setPos _sentCoordinates;
_pos = getPos _cam;
_posX= _pos select 0;
_posY= _pos select 1;
_NewPos= [_posX, _posY];
missionNamespace setVariable ["MRHSatPos", _NewPos];
publicVariable "MRHSatPos";

}] RemoteExec ["Spawn", 0, true];