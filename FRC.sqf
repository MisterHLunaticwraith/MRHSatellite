_functionslist =["MRH_fnc_AcceptFirstInit",
"MRH_fnc_CalculteTime",
"MRH_fnc_ChangeMarkerPos",
"MRH_fnc_CloseFullScreen",
"MRH_fnc_ConvertCoordinates",
"MRH_fnc_CreateSatCam",
"MRH_fnc_DefaultInitSatPos",
"MRH_fnc_DestroySatCam",
"MRH_fnc_DisplayCam",
"MRH_fnc_FullScreenCam",
"MRH_fnc_InitFromModule",
"MRH_fnc_IsSatelliteConsole",
"MRH_fnc_KeyBinds",
"MRH_fnc_LaserTarget",
"MRH_fnc_LegacyCamDisplay",
"MRH_fnc_MovingScreen",
"MRH_fnc_ObjectDetection",
"MRH_fnc_ObjectTracker",
"MRH_fnc_RegisterKeyPress",
"MRH_fnc_SatDeploy",
"MRH_fnc_SatDeployed",
"MRH_fnc_SatInit",
"MRH_fnc_SelectViewMode",
"MRH_fnc_SelectViewModeFullscreen",
"MRH_fnc_SetSatRange",
"MRH_fnc_ShowHide1208",
"MRH_fnc_TargetTracker",
"MRH_fnc_test"];

{_x call BIS_fnc_recompile} forEach _functionslist;
hint "Functions recompiled";