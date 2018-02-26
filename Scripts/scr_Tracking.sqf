params ["_object","_color"];

switch (true) do {
case (isNil "_color") : {_color = "\MRHSatellite\paa\white.paa";};
case (_color == "red") : {_color = "\MRHSatellite\paa\red.paa";};
case (_color == "grey") : {_color = "\MRHSatellite\paa\grey.paa";};
case (_color == "green") : {_color = "\MRHSatellite\paa\green.paa";};
case (_color == "white") : {_color = "\MRHSatellite\paa\white.paa";};
};



disableSerialization;

_uniqueID = [random [500, 2500, 5000],0] call bis_fnc_cutdecimals;

_tracking = true;
uinameSpace setVariable ["tracking", true];
publicVariable "tracking";

	_x = worldToScreen (getPos _object) select 0;
	_y = worldToScreen (getPos _object) select 1;
	_w = 0.0196875 * safezoneW;
	_h = 0.042 * safezoneH;
	
	//if (isNil _x or isNil _y) exitWith {};
with uiNamespace do { 
 _titleImage = findDisplay 46 ctrlCreate ["RscPicture", _uniqueID]; 
 _titleImage ctrlSetPosition [_x,_y,_w,_h];  
 _titleImage ctrlCommit 0; 
 _titleImage ctrlSetText _color;

};
while {_tracking} do {
with uiNamespace do{
((findDisplay 46) displayCtrl _uniqueID) ctrlSetPosition [(worldToScreen (getPos _object) select 0) -0.025,(worldToScreen (getPos _object) select 1) -0.025,0.021 * safezoneW,0.0392 * safezoneH];
((findDisplay 46) displayCtrl _uniqueID) ctrlCommit 0; 
_tracking = uinameSpace getVariable "tracking";};
};

with uiNamespace do {  

ctrlDelete ((findDisplay 46) displayCtrl _uniqueID); 
};
/*
//["0.385811 * safezoneW + safezoneX",
"0.458 * safezoneH + safezoneY",
"0.021 * safezoneW",
"0.0392 * safezoneH"]
*/