_cam = uinameSpace getVariable "MRH_SATCAM";
_pos = getPos _cam;
"SatPosMarker" setMarkerPos [_pos select 0, _pos select 1];
"SatPosMarker" setMarkerText localize "STR_MRH_PRESENTPOSITIONMARKER";
"SatPosMarker" setMarkerColor "ColorGreen";
"SatPosMarker" setMarkerAlpha 1;