disableSerialization;
params ["_selectedCtrl","_sentobj","_uniqueID"];

[_selectedCtrl,_sentobj, _uniqueID] spawn {
disableSerialization;
params ["_selectedCtrl","_sentobj","_uniqueID"];

//systemchat format ["ctrl %1 obj %2", str _selectedCtrl, str _sentobj];
///create the scructured text:
private ["_newID"];
 _newID = call MRH_fnc_RandomDisplayID;
 waitUntil {!isNil "_newID"};
// _uniqueID + 2;
 _position = ctrlPosition ((findDisplay 9751) displayCtrl _uniqueID);
 _x = _position select 0;
 _y = _position select 1;

 _bearing = [getDir _sentobj,0] call BIS_fnc_cutDecimals;
 _speed = [speed _sentobj,0] call BIS_fnc_cutDecimals;
 _textToparse = "<t color='#28962a'><t size = '0.6'><t font = 'LucidaConsoleB'>" + "Name-"+" "+ name _sentobj+ "<br/>" + "Bearing-"+" " + str _bearing +"°<br/>" +"Speed-" +" " + str _speed + "km/h</t>"; 
 _playerInfo = findDisplay 9751 ctrlCreate ["RscStructuredtext", _newId];
 _playerInfo ctrlSetStructuredText parsetext _textToparse;
 _ctrlw = ctrlTextWidth ((findDisplay 9751) displayCtrl _newId);
 _ctrlh = ctrlTextHeight ((findDisplay 9751) displayCtrl _newId);
 ((findDisplay 9751) displayCtrl _newId) ctrlSetPosition [_x +0.1,_y +0.05 ,_ctrlw + 0.5, _ctrlh +0.5];  
 ((findDisplay 9751) displayCtrl _newId) ctrlCommit 0; 

while {_selectedCtrl getVariable "MRH_CtrlVar_MouseIn"} do {
 _position = ctrlPosition ((findDisplay 9751) displayCtrl _uniqueID);
 _x = _position select 0;
 _y = _position select 1;

 _bearing = [getDir _sentobj,0] call BIS_fnc_cutDecimals;
 _speed = [speed _sentobj,0] call BIS_fnc_cutDecimals;
 _textToparse = "<t color='#28962a'><t size = '0.6'><t font = 'LucidaConsoleB'>" + "Name-"+" "+ name _sentobj+ "<br/>" + "Bearing-"+" " + str _bearing +"°<br/>" +"Speed-" +" " + str _speed + "km/h</t>"; 

 _playerInfo ctrlSetStructuredText parsetext _textToparse;
 _ctrlw = ctrlTextWidth ((findDisplay 9751) displayCtrl _newId);
 _ctrlh = ctrlTextHeight ((findDisplay 9751) displayCtrl _newId);
 ((findDisplay 9751) displayCtrl _newId) ctrlSetPosition [_x +0.1,_y +0.05 ,_ctrlw + 0.5, _ctrlh +0.5];  
 ((findDisplay 9751) displayCtrl _newId) ctrlCommit 0; 

//systemchat "loop";
};
//systemChat "loopout";
if (ctrlShown ((findDisplay 9751) displayCtrl _newId)) then {ctrlDelete ((findDisplay 9751) displayCtrl _newId); };

};