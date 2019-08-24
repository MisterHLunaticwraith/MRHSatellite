
if !(isServer) exitWith {};
_MRH_Zeus_logicSide = createCenter sideLogic;

_MRH_Zeus_logicGrp = createGroup _MRH_Zeus_logicSide;




_MRH_Zeus_Module = _MRH_Zeus_logicGrp createUnit ["MRH_VirtualSatelliteEntity",[0,0,0], [], 0, ""];//"ModuleCurator_F"

missionNamespace setVariable ["MRH_satCam_AttachedCurator",_MRH_Zeus_Module];//for dbg missionNamespace getVariable "MRH_satCam_AttachedCurator";

{
	_x addCuratorEditableObjects [[_MRH_Zeus_Module],true ];
} forEach allCurators;

//below shenanigans are forced by the fact that apparently you can't attach anything to a camera object... or set avariable to it
[_MRH_Zeus_Module] spawn {
	params ["_virtualEye"];
	//waitUntil {!(isNull (uinameSpace getVariable ["MRH_SATCAM",objNull]))};
	//while {!(isNull (uinameSpace getVariable ["MRH_SATCAM",objNull])) && alive (uinameSpace getVariable ["MRH_SATCAM",objNull])} do
	while {true} do
	{
		//_pos = getPos (uinameSpace getVariable ["MRH_SATCAM",objNull]);
		_pos = missionNamespace getVariable ["MRHSatPos",[0,0,0]];
		_pos set [2,0];

		_virtualEye setPos _pos;
		sleep 2;
	};
	//deleteVehicle _virtualEye;
};

_MRH_Zeus_Module