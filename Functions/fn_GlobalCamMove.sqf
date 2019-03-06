params ["_caller"];
//if (_caller == player) ExitWith {};
if (!isNull curatorCamera) ExitWith {};
_cam = uinameSpace getVariable "MRH_SATCAM";
_sentCoordinates = getPosATL _cam;



[[_sentCoordinates],{
params ["_sentCoordinates"];
if (isServer && isDedicated && !hasInterface) exitWith {};
if (!isNull curatorCamera) ExitWith {};
_cam = uinameSpace getVariable "MRH_SATCAM";
_cam setPosATL _sentCoordinates;
_NewPos = getPosATL _cam;
//_posX= _pos select 0;
//_posY= _pos select 1;
//_NewPos= [_posX, _posY];
missionNamespace setVariable ["MRHSatPos", _NewPos,true];
publicVariable "MRHSatPos";
publicVariableServer "MRHSatPos";
}] RemoteExec ["Spawn", 0,false];