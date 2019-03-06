_logic = param [0,objNull,[objNull]];
if (!isServer) ExitWith {};
_UserSetSpeed = _logic getVariable "SatSpeed";
missionNamespace setVariable ["MRHSatSpeed",parseNumber _UserSetSpeed];
publicVariableServer "MRHSatSpeed";
_logicPos = position _logic;
 
_userSetPos = [(_logicPos select 0), (_logicPos select 1), 300];
missionNamespace setVariable ["MRHSatPos", _userSetPos, true];
publicVariableServer "MRHSatPos";
publicVariable "MRHSatPos";
