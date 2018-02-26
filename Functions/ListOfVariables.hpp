publicVariable "MRHSatFirstInitCheck"
missionNamespace setVariable ["MRHCalculatedTravelTime", _travelTime];
missionNamespace setVariable ["MRHRemainingTime", _travelTime];
missionNamespace setVariable ["MRHCalculatedDistance", _dist];
 uinameSpace setVariable ["tracking", false];
 uiNameSpace setVariable ["SatLaserOn" , false];
 missionNamespace setVariable ["RequestedSatPos", _selectedpos];
 missionNamespace setVariable ["SATCAM", _camMRHSAT];
 missionNamespace setVariable ["MRHSatPos", _InitSatPos];
 missionNamespace setVariable ["MRHSatSpeed", _satSpeed];
 missionNamespace setVariable ["MRHSatIsMoving",_isMoving];
 missionNamespace setVariable ["SelectedViewMode", _viewMode];
 satelliteDummyObject