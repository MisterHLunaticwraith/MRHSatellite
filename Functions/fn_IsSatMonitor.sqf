if (isServer && !hasInterface) ExitWith {};

params ["_object"];
[_object] spawn {
params ["_object"];


//waituntil mission is initialized

_textSlot = 0;
if (_object isKindOf "Land_Laptop_03_base_F") then {_textSlot =1;};
if (_object isKindOf "Land_MultiScreenComputer_01_base_F") then {
	_textSlot =2;
	if (local _object) then 
		{
		_object animateSource ["open_source",1,true];
		_object animateSource ["open_source",0];
		};
	
	};
waitUntil {(!isNull (findDisplay 46)) && alive player};
//waitUntil {time>1};
_object setObjectTexture [_textSlot, "\MRHSatellite\Paa\offline.paa"];

if (_object isKindOf "Land_MultiScreenComputer_01_base_F") then {
	_object setObjectTexture [1, "\MRHSatellite\Paa\offline.paa"];
	_object setObjectTexture [3, "\MRHSatellite\Paa\offline.paa"];
};

waitUntil {!isNull (uinameSpace getVariable ["MRH_SATCAM",objNull])};//probably unnecessary
waitUntil {(missionNamespace getVariable ["MRHSatFirstInitCheck",false])};
if (!isNull curatorCamera) ExitWith {};
_camMRHSAT = uinameSpace getVariable "MRH_SATCAM";


//added in 1.3
//if (isNil "_pip") then {_pip =0};
_camMRHSAT cameraEffect ["internal","back","rttMRHSatelliteFeed"]; 
///added in 1.3 should fix mp pip issue
_camMRHSAT camCommit 0;
[_object,_textSlot] spawn {
	params ["_object","_textSlot"];
	sleep 0.5;
	_pip = missionNamespace getVariable ["SelectedViewMode",0];
	_object setObjectTexture [_textSlot, "#(argb,512,512,1)r2t(rttMRHSatelliteFeed,1.0)"];

		if (_object isKindOf "Land_MultiScreenComputer_01_base_F") then {
			_object setObjectTexture [1, "#(argb,512,512,1)r2t(rttMRHSatelliteFeed,1.0)"];
			_object setObjectTexture [3, "#(argb,512,512,1)r2t(rttMRHSatelliteFeed,1.0)"];
		};
	"rttMRHSatelliteFeed" setPiPEffect [_pip];
	
	};
};

[_object] spawn {
	params ["_object"];
	waitUntil {time>1};
	sleep 2;
	_isSatConsole = _object getVariable ["MRH_Sat_isSatelliteConsole",false];
	if !(_isSatConsole) then {_object setVariable ["MRH_Sat_isSatelliteScreen",true,true];};
};