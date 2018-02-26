ctrlshow [5001, false];
ctrlshow [1600, false];
ctrlshow [1601, false];
//ctrlshow [1208, false];
[false] call MRH_fnc_ShowHide1208;
ctrlshow [6203, true];
ctrlshow [6204, true];
ctrlshow [6205, true];
_ctrlPic =((findDisplay 9751) displayCtrl 1201);
_ctrlPic ctrlSetText "\MRHSatellite\Paa\movingscreen.paa";
_isMoving = true;
missionNamespace setVariable ["MRHSatIsMoving",_isMoving];
publicVariable "MRHSatIsMoving";

execVM "\MRHSatellite\Scripts\scr_SatMovingCountDownSilent.sqf";