_todestroy = uinameSpace getVariable "MRH_SATCAM";
deleteVehicle _todestroy;
camDestroy _todestroy;
_todestroy2 = missionNamespace getVariable "MRH_SATCAMTARGET";
deleteVehicle _todestroy2;
camDestroy _todestroy2;