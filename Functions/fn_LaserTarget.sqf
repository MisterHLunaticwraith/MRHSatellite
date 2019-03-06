[] spawn {
if (!isNull curatorCamera) ExitWith {};
playSound "LaseringTarget";
ctrlshow [1270, true];
_startpos = screenToWorld [0.5,0.5];
_virtualTarget = "Land_HelipadEmpty_F" createVehicle _startpos;
_laserTarget = "LaserTargetW" createVehicle _startpos;
_laserTarget attachto [_virtualTarget,[0,0,0]];
_laseron = true;
missionNameSpace setVariable ["SatLaserOn" , true];
publicVariable "SatLaserOn";
///
private ["_camera", "_camPos","_endPosASL", "_intersection", "_intersectionPOSArray", "_terrainPosARRAY"];
_camera = uinameSpace getVariable "MRH_SATCAM";
//
while {_laseron} do
{
//_pos =  screenToWorld [0.5,0.5];
////
_camPos = getPosASL _camera;
_endPosASL = [(_camPos select 0),(_camPos select 1),0];
_intersection = lineIntersectsSurfaces [_camPos, _endPosASL]; 
//toDo: localize systemchat
if (_intersection isEqualTo []) then {playsound "laseringstopped"; systemchat "Laser over water, lasering stopped."; ctrlshow [1270, false]; missionNameSpace setVariable ["SatLaserOn",false, true];} else {
_intersectionPOSArray = _intersection select 0;

_terrainPosARRAY = _intersectionPOSArray select 0;};

_pos = _terrainPosARRAY;

////
_virtualTarget setPos _pos;
_laseron = missionNameSpace getVariable "SatLaserOn";
};
deleteVehicle _laserTarget;
deleteVehicle _virtualTarget;
ctrlshow [1270, false];
};
