

/////////////
#include "\a3\editor_f\Data\Scripts\dikCodes.h"
_1 = localize "STR_MRH_PRETTYNAME_MOVEUP";
_2 = localize "STR_MRH_PRETTYNAME_MOVEDOWN";
_3 = localize "STR_MRH_PRETTYNAME_MOVELEFT";
_4 = localize "STR_MRH_PRETTYNAME_MOVERIGHT";
_5 = localize "STR_MRH_PRETTYNAME_TURNLEFT";
_6 = localize "STR_MRH_PRETTYNAME_TURNRIGHT";
_7 = localize "STR_MRH_PRETTYNAME_ZOOMIN";
_8 = localize "STR_MRH_PRETTYNAME_ZOOMOUT";
_9 = localize "STR_MRH_TOOLTIP_MOVEUP";
_10 = localize "STR_MRH_TOOLTIP_MOVEDOWN";
_11 = localize "STR_MRH_TOOLTIP_MOVELEFT";
_12 = localize "STR_MRH_TOOLTIP_MOVERIGHT";
_13 = localize "STR_MRH_TOOLTIP_TURNLEFT";
_14 = localize "STR_MRH_TOOLTIP_TURNRIGHT";
_15 = localize "STR_MRH_TOOLTIP_ZOOMIN";
_16 = localize "STR_MRH_TOOLTIP_ZOOMOUT";
_17 = localize "STR_MRH_OPENUTDKEYBIND";
_18 = localize "STR_MRH_OPENUTDKEYBINDTOOLTIP";
["MRHSatellite", "MRHSatKeyUp",[_1, _9],{0 call MRH_fnc_RegisterKeyPress},{},[DIK_Z, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHSatKeyDown",[_2, _10],{1 call MRH_fnc_RegisterKeyPress},{},[DIK_S, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHSatKeyLeft",[_3, _11],{2 call MRH_fnc_RegisterKeyPress},{},[DIK_Q, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHSatKeyRight",[_4, _12],{3 call MRH_fnc_RegisterKeyPress},{},[DIK_D, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHSatKeyRotateLeft",[_5, _13],{4 call MRH_fnc_RegisterKeyPress},{},[DIK_A, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHSatKeyRotateRiht",[_6, _14],{5 call MRH_fnc_RegisterKeyPress},{},[DIK_E, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHZoomIn",[_7, _15],{6 call MRH_fnc_RegisterKeyPress},{},[DIK_ADD, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHZoomOut",[_8, _16],{7 call MRH_fnc_RegisterKeyPress},{},[DIK_NUMPADMINUS, [false, false, false]]] call CBA_fnc_addKeybind;
["MRHSatellite", "MRHOpenUTD",[_17, _18],{if ("MRH_TacticalDisplay" in items player) then {[true] call MRH_fnc_SatInit}},{},[DIK_U, [false, true, false]]] call CBA_fnc_addKeybind;