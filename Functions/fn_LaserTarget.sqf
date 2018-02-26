[] spawn {
playSound "LaseringTarget";
ctrlshow [1270, true];
_startpos = screenToWorld [0.5,0.5];
_virtualTarget = "Land_HelipadEmpty_F" createVehicle _startpos;
_laserTarget = "LaserTargetW" createVehicle _startpos;
_laserTarget attachto [_virtualTarget,[0,0,0]];
_laseron = true;
uiNameSpace setVariable ["SatLaserOn" , true];
publicVariable "SatLaserOn";

while {_laseron} do
{
_pos =  screenToWorld [0.5,0.5];
_virtualTarget setPos _pos;
_laseron = uiNameSpace getVariable "SatLaserOn";
};
deleteVehicle _laserTarget;
deleteVehicle _virtualTarget;
ctrlshow [1270, false];
};
