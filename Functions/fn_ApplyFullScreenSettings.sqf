[] spawn {
#include "MRH_components.hpp"
disableSerialization;
_ctrl = ((findDisplay 9751) displayCtrl 5202);
waitUntil {ctrlShown _ctrl};
_targetdetect = ["MRH_SAT_allowTargetDetection"] call cba_settings_fnc_get;
_trackingenable =  ["MRH_SAT_allowTargetTracking"] call cba_settings_fnc_get;
_lasertargeting = ["MRH_SAT_allowLasering"] call cba_settings_fnc_get;
ctrlshow [5202,_targetdetect];
ctrlShow [6202, _targetdetect];
ctrlShow [5203, _trackingenable];
ctrlshow [6203,_trackingenable];
ctrlshow [5205,_lasertargeting];
ctrlshow [6205,_lasertargeting];

if (!_targetdetect && !_trackingenable && !_lasertargeting) then {
ctrlshow [5204,false];
ctrlshow [6204,false];
};
};