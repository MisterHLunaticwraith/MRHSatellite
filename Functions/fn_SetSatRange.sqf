_maxHeight = ["MRH_SAT_MaxSatAltitude"] call cba_settings_fnc_get;
((findDisplay 9751) displayCtrl 1202) sliderSetRange [10, _maxHeight];
((findDisplay 9751) displayCtrl 1202) sliderSetPosition _maxHeight;
