_todestroy = player getVariable "SATCAM";
deleteVehicle _todestroy;
camDestroy _todestroy;
_todestroy2 = missionNamespace getVariable "SATCAMTARGET";
deleteVehicle _todestroy2;
camDestroy _todestroy2;