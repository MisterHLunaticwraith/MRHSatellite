////////////////////////////////////////////////////////////////////
//BEGIN FULLSCREEN
///////////////////////////////////////////////////////////////////

class MRHSatelliteFullSCreen
{
	idd=9751;
	movingenable=false;
	
	onUnload  = "call MRH_fnc_CloseFullScreen;";
	
	class controls 
	{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Giqaqu)
////////////////////////////////////////////////////////



class MRHMarkings: RscPictureMRHSAT
{
	idc = 1231;
	show = true;
	text = "\MRHSatellite\Paa\screenmarks.paa";
	
	x = -0.0184375 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 1.01719 * safezoneW;
	h = 1.008 * safezoneH;
};
class MRHAltitudeName: RscStructuredTextMRHSAT
{
	idc = 1204;
	show = true;
	text = "Altitude";
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.01 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHAltitudeDisplay: RscStructuredTextMRHSAT
{
	idc = 1205;
	show = true;
	text = "AltDisplay";
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.038 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHViewModeName: RscStructuredTextMRHSAT
{
	idc = 1206;
	show = true;
	text = "View Mode";
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.066 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHViewModeDisplay: RscStructuredTextMRHSAT
{
	idc = 1207;
	show = true;
	text = "ViewDisplay";
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.094 * safezoneH + safezoneY;
	w = 0.0721875 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHSlider: RscSliderMRHSAT
{
	idc = 1202;
	show = true;
	 type = CT_SLIDER; 
	 style = SL_VERT;
	x = 0.906875 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.84 * safezoneH;
	    color[] = { 1, 1, 1, 1 }; 
        coloractive[] = { 1, 0, 0, 0.5 };
	//onLoad = "call MRH_fnc_SetSatRange;";
	onSliderPosChanged = "((findDisplay 9751) displayCtrl 1205) ctrlSetStructuredText parsetext (str (round (_this select 1))); _cam = uinameSpace getVariable ""MRH_SATCAM""; _cam setPos [(getpos _cam select 0), (getpos _cam select 1), (_this select 1)];[player] call MRH_fnc_GlobalCamMove;";
};
/*
	};
};
*/

class MRHChangeVision: RscButtonMRHSAT
{
	idc = 1600;
	show = true;
	text = $STR_MRH_CHANGEVIEWMODE; //--- ToDo: Localize;
	x = 0.217813 * safezoneW + safezoneX;
	y = 0.038 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
	action = "ctrlshow [2100, true];";
};

class MRHCloseFullscreenButton: RscButtonMRHSAT
{
	idc = 1601;
	show = true;
	action = "closedialog 0;";
	text = $STR_MRH_LEAVEFULLSCREEN; //--- ToDo: Localize;
	x = 0.217813 * safezoneW + safezoneX;
	y = 0.01 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};



class MRHSelectView: RscComboMRHSAT
{
	idc = 2100;
	show = false;
	text = "Default"; //--- ToDo: Localize;
	x = 0.217813 * safezoneW + safezoneX;
	y = 0.066 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
	onLBSelChanged = "_value = _this select 1; [_value] call MRH_fnc_SelectViewModeFullscreen;ctrlshow [2100, false];";
	
    
};
class MRHScanIcon: RscPictureMRHSAT
{
	idc = 5202;
	//onload = "if !(SETTINGSALLOWTARGETDETECTION) then {ctrlshow [5202,false];};";
	text = "\MRHSatellite\Paa\iconscan.paa";
	x = 0.00125001 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHScanButton: RscButtonSpecialMRHSAT
{
	idc = 6202;
	show = true;
	action = "call MRH_fnc_ObjectDetection; playSound 'Scanning';";
	text = ""; //--- ToDo: Localize;
	x = 0.00125001 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHIconTrack: RscPictureMRHSAT
{
	idc = 5203;
	text = "\MRHSatellite\Paa\icontrack.paa";
	x = 0.05375 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHSTrackButton: RscButtonSpecialMRHSAT
{
	idc = 6203;
	show = true;
	action = "ctrlShow [1789, true];playSound 'selecttarget';";
	text = ""; //--- ToDo: Localize;
	x = 0.05375 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHClearIcon: RscPictureMRHSAT
{
	idc = 5204;
	text = "\MRHSatellite\Paa\icontclear.paa";
	x = 0.10625 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHSClearButton: RscButtonSpecialMRHSAT
{
	idc = 6204;
	show = true;
	action = "uinameSpace setVariable ['tracking', false];publicVariable 'tracking'; missionNameSpace setVariable ['SatLaserOn', false];publicVariable 'SatLaserOn';playSound 'TrackingDisabled'; missionNameSpace setVariable ['MRH_Follow_tracking', false];publicVariable 'MRH_Follow_tracking';";
	text = ""; //--- ToDo: Localize;
	x = 0.10625 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHLaserIcon: RscPictureMRHSAT
{
	idc = 5205;
	text = "\MRHSatellite\Paa\iconlaser.paa";
	x = 0.15875 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHLaserButton: RscButtonSpecialMRHSAT
{
	idc = 6205;
	show = true;
	action = "call MRH_fnc_LaserTarget;";
	text = ""; //--- ToDo: Localize;
	x = 0.15875 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHLaserOnIcon: RscPictureMRHSAT
{
	idc = 1270;
	show = false;
	text = "\MRHSatellite\paa\laseronicon.paa";
	x = 0.84125 * safezoneW + safezoneX;
	y = 0.206 * safezoneH + safezoneY;
	w = 0.039375 * safezoneW;
	h = 0.07 * safezoneH;
};
class MRHTrackingtext: RscStructuredTextMRHSAT
{
	idc = 1271;
	show = false;
	text = "Tracking"; //--- ToDo: Localize;
	x = 0.7625 * safezoneW + safezoneX;
	y = 0.136 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
};
//added in v1.4
class MRHCompass: RscPictureMRHSAT
{
	idc = 1215;
	text = "\MRHSatellite\Paa\compass.paa";
	x = 0.808438 * safezoneW + safezoneX;
	y = 0.808 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.126 * safezoneH;
};
class MRHBearingText: RscStructuredTextMRHSAT
{
	idc = 1105;
	text = "BEARING 360"; //--- ToDo: Localize;
	x = 0.808438 * safezoneW + safezoneX;
	y = 0.766 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHElevationDisplay: RscStructuredTextMRHSAT
{
	idc = 1106;
	text = "Terrain Elevation : 1200m."; //--- ToDo: Localize;
	x = 0.040625 * safezoneW + safezoneX;
	y = 0.136 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHGridCoordDisplay: RscStructuredTextMRHSAT
{
	idc = 1107;
	text = "Grid: 000111"; //--- ToDo: Localize;
	x = 0.040625 * safezoneW + safezoneX;
	y = 0.178 * safezoneH + safezoneY;
	w = 0.177187 * safezoneW;
	h = 0.028 * safezoneH;
};
//end add

class MRHStaticsoverlay: RscPictureMRHSAT
{
	idc = 1333;
	onLoad = "call MRH_fnc_ApplyFullScreenSettings";
	text = "\MRHSatellite\Paa\overlaystatics.paa";
	
		colorText[] = 
	{
		1,
		1,
		1,
		0.4 //transparencedeloverlay
	};
	x = -0.0184375 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 1.01719 * safezoneW;
	h = 1.008 * safezoneH;
};

class MRHClickableLayer: RscStructuredTextMRHSAT
{
	idc = 1789;
	
	Enable = true;
	Moving = false;
	show= false;
	//onLoad = "((findDisplay 9751) displayCtrl 1789) ctrlAddEventHandler [""onMouseButtonDblClick"", systemChat str _this];" ;
	//onLoad = "systemChat 'loaded'; ctrlEnable [1789,true];";
	onMouseButtonDblClick = " [_this] call MRH_fnc_TargetTracker;";
		colorText[] = 
	{
		1,
		1,
		1,
		1 //transparencedeloverlay
	};
	x = -0.0184375 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 1.01719 * safezoneW;
	h = 1.008 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};