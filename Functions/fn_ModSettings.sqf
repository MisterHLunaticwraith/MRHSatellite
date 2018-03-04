
///////////adds options to the menu
_allowFullscreenText = localize "STR_MRH_SETTINGSALLOWFULLSCREENTEXT";
_allowFullscreenToolTip = localize "STR_MRH_SETTINGSALLOWFULLSCREENTOOLTIP";
_allowLaseringText = localize "STR_MRH_SETTINGSALLOWLASERINGTEXT";
_allowLaseringTooltip = localize "STR_MRH_SETTINGSALLOWLASERINGTOOLTIP";
_allowTargetDetectionText = localize "STR_MRH_SETTINGSALLOWTARGETDETECTIONTEXT";
_allowTargetDetectionTooltip = localize "STR_MRH_SETTINGSALLOWTARGETDETECTIONTOOLTIP";
_allowTragetTrackingText = localize "STR_MRH_SETTINGSALLOWTARGETTRACKINGTEXT";
_allowTargetTrackingTooltip = localize "STR_MRH_SETTINGSALLOWTARGETTRACKINGTOOLTIP";

_setMaxHeightText = localize "STR_MRH_SETTINGSSETRANGETEXT";
_setMaxHeightTooltip = localize "STR_MRH_SETTINGSSETRANGETOOLTIP";

["MRH_SAT_allowFullscreen" , "CHECKBOX",[_allowFullscreenText,_allowFullscreenToolTip], "MRHSatellite Options", true,1] call cba_settings_fnc_init;
["MRH_SAT_allowLasering" , "CHECKBOX",[_allowLaseringText,_allowLaseringTooltip], "MRHSatellite Options", true,1] call cba_settings_fnc_init;
["MRH_SAT_allowTargetDetection" , "CHECKBOX",[_allowTargetDetectionText,_allowTargetDetectionTooltip], "MRHSatellite Options", true,1] call cba_settings_fnc_init;
["MRH_SAT_allowTargetTracking" , "CHECKBOX",[_allowTragetTrackingText,_allowTargetTrackingTooltip], "MRHSatellite Options", true,1] call cba_settings_fnc_init;

["MRH_SAT_MaxSatAltitude", "SLIDER",   [_setMaxHeightText,   _setMaxHeightTooltip], "MRHSatellite Options", [10, 1000, 300, 0],1] call cba_settings_fnc_init;

