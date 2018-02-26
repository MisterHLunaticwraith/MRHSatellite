_logic = param [0,objNull,[objNull]];
_UserSetSpeed = _logic getVariable "SatSpeed";
missionNamespace setVariable ["MRHSatSpeed",parseNumber _UserSetSpeed];
_userSetPos = position _logic;
missionNamespace setVariable ["MRHSatPos", _userSetPos];
