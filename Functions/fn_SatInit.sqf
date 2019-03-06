if (!isNull curatorCamera) ExitWith {};
_isCalledFromTablet = _this select 0;
if (isNil "_isCalledFromTablet") then {_isCalledFromTablet = false;};
//_handle = createdialog "MRHSatellite";
	if (_isCalledFromTablet) then {
	_handle = createdialog "MRHSatelliteUTD";
	player setVariable ["MRHInterfaceIsCalledFromTablet",true];
	call MRH_fnc_initWithTablet;
	} 
else {_handle = createdialog "MRHSatellite";};

	call MRH_fnc_SetSatRange;
disableSerialization;
_ctrlCOMBO = ((findDisplay 9751) displayCtrl 2100);
_ctrlCOMBO lbadd "Normal";
lbSetData [2100, 0, 0];

_ctrlCOMBO lbadd localize "STR_MRH_FLIRWHOT";
lbSetData [2100, 1, 1];

_ctrlCOMBO lbadd localize "STR_MRH_FLIRBHOT";
lbSetData [2100, 2, 2]; 

_firstinit = missionNamespace getVariable "MRHSatFirstInitCheck";
_isMoving = missionNamespace getVariable "MRHSatIsMoving";
//////debutinsert
if (isNil "_firstinit") then {_firstinit = false;};
if (isNil "_isMoving") then {_isMoving = false;};
switch (true) do {

case (_isMoving) : {
call MRH_fnc_MovingScreen;};

case (!_firstinit): {
ctrlShow [5001, true];
ctrlShow [1600, false];
ctrlShow [1601, false];

buttonSetAction [5003, "call MRH_fnc_AcceptFirstInit"];
_ctrlTEXTZONE =((findDisplay 9751) displayCtrl 5006);
_ctrlTEXTZONE ctrlSetStructuredText parsetext (localize "STR_MRH_INITQUESTION");
missionNamespace setVariable ["MRHSatFirstInitCheck", false];
publicVariable "MRHSatFirstInitCheck";

_UserInitSatPos = missionNamespace getVariable "MRHSatPos";
_Marker = createMarker ["SatPosMarker", [(_UserInitSatPos select 0), (_UserInitSatPos select 1)]];
"SatPosMarker" setMarkerType "Satellite";
"SatPosMarker" setMarkerText localize "STR_MRH_INITSATPOSMARKER";
"SatPosMarker" setMarkerColor "ColorGreen";
};

case (_firstinit): {
ctrlShow [5001, true];

buttonSetAction [5003, "call MRH_fnc_LegacyCamDisplay"];
_ctrlTEXTZONE =((findDisplay 9751) displayCtrl 5006);
_ctrlTEXTZONE ctrlSetStructuredText parsetext (localize "STR_MRH_ACCESS_SAT_NOCHANGE");

};

};






