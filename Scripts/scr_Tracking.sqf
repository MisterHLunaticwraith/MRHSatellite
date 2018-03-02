params ["_object","_color"];
///added in v1.4
 //if ("MRH_BluForTransponder" in items _object && isPlayer _object) then {_textToparse = "<t color='#42f445'><t size = '0.5'>" + name _object + "</t>"; };
//endadded

switch (true) do {
case (isNil "_color") : {_color = "\MRHSatellite\paa\white.paa";};
case (_color == "red") : {_color = "\MRHSatellite\paa\red.paa";};
case (_color == "grey") : {_color = "\MRHSatellite\paa\grey.paa";};
case (_color == "green") : {_color = "\MRHSatellite\paa\green.paa";};
case (_color == "white") : {_color = "\MRHSatellite\paa\white.paa";};
};



disableSerialization;
private ["_newID", "_uniqueID"];
_uniqueID = call MRH_fnc_RandomDisplayID;
//hint str _uniqueID;
 //waitUntil {!isNil "_uniqueID"};
//_uniqueID =[random [500, 2500, 5000],0] call bis_fnc_cutdecimals;
_newId = call MRH_fnc_RandomDisplayID;
 //waitUntil {!isNil "_newID"};
//_newID =_uniqueID +1;
_tracking = true;
uinameSpace setVariable ["tracking", true];
publicVariable "tracking";

	_x = worldToScreen (getPos _object) select 0;
	_y = worldToScreen (getPos _object) select 1;
	_w = 0.0196875 * safezoneW;
	_h = 0.042 * safezoneH;
	
	//if (isNil _x or isNil _y) exitWith {};
with uiNamespace do { 
 _titleImage = findDisplay 9751 ctrlCreate ["RscPicture", _uniqueID]; 
 _titleImage ctrlSetPosition [_x,_y,_w,_h];  
 _titleImage ctrlCommit 0; 
 _titleImage ctrlSetText _color;

};
 //added in v1.4
 //&& isPlayer _object //to test with AI remove this below//toDo make this an option
 if ("MRH_BluForTransponder" in items _object && (_color == "\MRHSatellite\paa\green.paa")) then { 
 
 //hint format ["unique %1 new %2",str _uniqueID, str _newId];
 _roledescription = roleDescription _object;
 if (_roledescription == "") then {_roledescription = "Soldier"};
 _textToparse = "<t color='#42f445'><t size = '1'><t font = 'puristalight'>" + _roledescription +"-"+ name _object + "</t>"; 
 _playername = findDisplay 9751 ctrlCreate ["RscStructuredtext", _newId];


 //_playername ctrlSetPosition [_x+1,_y+1,_w+1,_h+1]; 
 //_playername ctrlCommit 0; 
 _playername ctrlSetStructuredText parsetext _textToparse;
 _ctrlw = ctrlTextWidth ((findDisplay 9751) displayCtrl _newId);
 _ctrlh = ctrlTextHeight ((findDisplay 9751) displayCtrl _newId);
 ((findDisplay 9751) displayCtrl _newId) ctrlSetPosition [_x +1,_y +1,10,10];  
 ((findDisplay 9751) displayCtrl _newId) ctrlCommit 0; 
 
 ((findDisplay 9751) displayCtrl _uniqueID) ctrlAddEventHandler ["Mouseenter", {
 disableSerialization;//
 private ["_selectedCtrl","_sentobj", "_uniqueID"];
 _selectedCtrl = (_this select 0); 
 
 _sentobj = _selectedCtrl getVariable "MRH_CtrlVar_SentObj";
 _uniqueID = _selectedCtrl getVariable "MRH_CtrlVar_SentID";
 _selectedCtrl setVariable ["MRH_CtrlVar_MouseIn", true];
 [_selectedCtrl,_sentobj, _uniqueID] call MRH_fnc_BluForMouseOver;
 //[_selectedCtrl,_sentobj, _uniqueID] execVM "\MRHSatellite\Functions\fn_BluForMouseOver.sqf";//fordebug
 }];
 
  ((findDisplay 9751) displayCtrl _uniqueID) ctrlAddEventHandler ["MouseExit", {
  disableSerialization;//
 _selectedCtrl = (_this select 0); 
 _selectedCtrl setVariable ["MRH_CtrlVar_MouseIn", false];
 
 }];
 
 
 ((findDisplay 9751) displayCtrl _uniqueID) setVariable ["MRH_CtrlVar_SentObj", _object];
 ((findDisplay 9751) displayCtrl _uniqueID) setVariable ["MRH_CtrlVar_SentID", _uniqueID];
 ((findDisplay 9751) displayCtrl _uniqueID) ctrlEnable true;
 //systemchat format ["id %1 eh %2", str _uniqueID, str _test];
 //((findDisplay 9751) displayctrl 1333) ctrlShow false;
  //((findDisplay 9751) displayctrl 1231) ctrlShow false;
 //_playername ctrlSetText "sdqD";
 };
 
 if ((_color == "\MRHSatellite\paa\red.paa")) then {
 [_object, _uniqueID] call MRH_fnc_TrackedObjIntel;
 //[_object, _uniqueID] execVM "\MRHSatellite\Functions\fn_TrackedObjIntel.sqf";//fordebug
 };
 ///endadd

while {_tracking} do {
with uiNamespace do{
((findDisplay 9751) displayCtrl _uniqueID) ctrlSetPosition [(worldToScreen (getPos _object) select 0) -0.025,(worldToScreen (getPos _object) select 1) -0.025,0.021 * safezoneW,0.0392 * safezoneH];
((findDisplay 9751) displayCtrl _uniqueID) ctrlCommit 0;

_tracking = uinameSpace getVariable "tracking";};
///added in v1.4
if (ctrlShown ((findDisplay 9751) displayCtrl _newId)) then {
 _ctrlx =(worldToScreen (getPos _object) select 0) +0.01;
 _ctrly = (worldToScreen (getPos _object) select 1) -0.025,0.021 * safezoneW,0.0392 * safezoneH;
 _ctrlw = ctrlTextWidth ((findDisplay 9751) displayCtrl _newId);
 _ctrlh = ctrlTextHeight ((findDisplay 9751) displayCtrl _newId);
((findDisplay 9751) displayCtrl _newId) ctrlSetPosition [_ctrlx,_ctrly,10,10];

((findDisplay 9751) displayCtrl _newId) ctrlCommit 0;
 //systemchat str ctrlPosition ((findDisplay 9751) displayCtrl _newId);
};
//endaddded 
};

with uiNamespace do {  

ctrlDelete ((findDisplay 9751) displayCtrl _uniqueID); 

};
//added in v1.4
if (ctrlShown ((findDisplay 9751) displayCtrl _newId)) then {ctrlDelete ((findDisplay 9751) displayCtrl _newId); };
call MRH_fnc_ResetUsedIDCs;
//endadded

