[] spawn {
player setVariable ["MRH_DistanceToAntennaScriptRunning",false];//will stop previously running loop
_linkedAntenna = player getVariable ['MRH_AntennaLinkedToTablet',objNull];
_staticScreen =  ((findDisplay 9751) displayCtrl 1333);
_staticScreen ctrlSetText "\MRHSatellite\Paa\overlaystaticsSpecial.paa";
if (isNull _linkedAntenna) then {_staticScreen ctrlSetTextColor [1,1,1,0.4];} else {_dist = player distance _linkedAntenna; _staticScreen ctrlSetTextColor [1,1,1,_dist/100];};
if (isNull _linkedAntenna) ExitWith 
	{playsound "MRH_SAT_AntennaNotConnected";
	_ctrls = [1231,1204,1205,1206,1207,1209,1202,1777,1210,1600,1601,2100,5001,5002,5003,5004,5006,1215,1105,1106,1107,6203,6204];
	waitUntil {ctrlShown ((findDisplay 9751) displayCtrl 5001)};
		{
		ctrlShow [_x,false];
		} forEach _ctrls;
	_backImage = ((findDisplay 9751) displayCtrl 1201);
	_backImage ctrlSetText "\MRHSatellite\Paa\satNoAntenna.paa";
	};

sleep 2; //leave some delay to make sure any previouslyrunningloop is stopped
player setVariable ["MRH_DistanceToAntennaScriptRunning",true];
//_test = 0;
_signalIcon = ((findDisplay 9751) displayCtrl 1203);

while {alive _linkedAntenna && _linkedAntenna == player getVariable ['MRH_AntennaLinkedToTablet',objNull] && (player getVariable "MRH_DistanceToAntennaScriptRunning")} do 
	{
	//_test = _test + 1; systemChat str _test; sleep 2;

	_dist = player distance _linkedAntenna;
		switch (true) do 
			{
			case (_dist > 100):{
			_signalIcon ctrlsetText "\MRHSatellite\Paa\Signal\signallost.paa"; 
			hint localize "STR_MRH_SIGNALLOST"; 
			player setVariable ["MRH_DistanceToAntennaScriptRunning",false];
			player setVariable ['MRH_AntennaLinkedToTablet',objNull];
			playsound "MRH_SAT_AntennaSignalLost";
			};
			case (_dist > 75 && _dist <=100):{_signalIcon ctrlsetText "\MRHSatellite\Paa\Signal\0bar.paa";};
			case (_dist > 50 && _dist <=75):{_signalIcon ctrlsetText "\MRHSatellite\Paa\Signal\1bar.paa"};
			case (_dist > 25 && _dist <=50):{_signalIcon ctrlsetText "\MRHSatellite\Paa\Signal\2bar.paa"};
			case (_dist < 25 && _dist >=0):{_signalIcon ctrlsetText "\MRHSatellite\Paa\Signal\fullsignal.paa"};
			};
	sleep 1; //refresh every 5 secs
	if (ctrlShown _staticScreen) then {
	
	_staticScreen ctrlSetTextColor [1,1,1,_dist/100];};
	};
};