class MRHSatellite
{
	idd=9751;
	movingenable=false;
	
	class controls 
	{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Giqaqu)
////////////////////////////////////////////////////////

class MRHLaptopSat: RscPictureMRHSAT
{
	idc = 1200;
	text = "\MRHSatellite\Paa\laptop.paa";
	x = 0.00125001 * safezoneW + safezoneX;
	y = -0.00399999 * safezoneH + safezoneY;
	w = 1.01719 * safezoneW;
	h = 1.008 * safezoneH;
};
class MRHScreenzone: RscPictureMRHSAT
{
	idc = 1201;
	text = "\MRHSatellite\Paa\welcomescreen.paa";
	//onMouseButtonClick = "hint ""testé""; ";//[_this] call MRH_fnc_ConvertCoordinates;
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.49875 * safezoneW;
	h = 0.49 * safezoneH;
};
/*
class Group1 : RscControlsGroupMRHSAT
{
	idc = 1208;
	show = false;
		class controls 
	{
*/
class MRHMarkings: RscPictureMRHSAT
{
	idc = 1231;
	show = false;
	text = "\MRHSatellite\Paa\screenmarks.paa";
	
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.49875 * safezoneW;
	h = 0.49 * safezoneH;
};
class MRHAltitudeName: RscStructuredTextMRHSAT
{
	idc = 1204;
	show = false
	text = "Altitude";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.192 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHAltitudeDisplay: RscStructuredTextMRHSAT
{
	idc = 1205;
	show = false
	text = "AltDisplay";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.22 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHViewModeName: RscStructuredTextMRHSAT
{
	idc = 1206;
	show = false
	text = "View Mode";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.248 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHViewModeDisplay: RscStructuredTextMRHSAT
{
	idc = 1207;
	show = false
	text = "ViewDisplay";
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.276 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHFullScreenButton: RscButtonMRHSAT
{
	idc = 1209;
	show = false;
	action = "closedialog 0; call MRH_fnc_FullScreenCam";/////averif
	text = $STR_MRH_GO_FULLSCREEN; //--- ToDo: Localize;
	x = 0.434375 * safezoneW + safezoneX;
	y = 0.584 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHSlider: RscSliderMRHSAT
{
	idc = 1202;
	show = false
	 type = CT_SLIDER; 
	 style = SL_VERT;
	x = 0.716563 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.0328125 * safezoneW;
	h = 0.49 * safezoneH;
	    color[] = { 1, 1, 1, 1 }; 
        coloractive[] = { 1, 0, 0, 0.5 };
	//onLoad = "call MRH_fnc_SetSatRange;";
	onSliderPosChanged = "((findDisplay 9751) displayCtrl 1205) ctrlSetStructuredText parsetext (str (round (_this select 1))); _cam = player getVariable ""SATCAM""; _cam setPos [(getpos _cam select 0), (getpos _cam select 1), (_this select 1)];call MRH_fnc_GlobalCamMove;";
};
/*
	};
};
*/

class MRHMapTest : RscMapControlMRHSAT
{
	idc = 1777;
	show = false;
	onMouseButtonClick = "hint localize ""STR_MRH_NEWPOSHINT""; [_this] call MRH_fnc_ConvertCoordinates;";
	//onMapSingleClick = "hint ""bouhyah""";
	//text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.49875 * safezoneW;
	h = 0.49 * safezoneH;
};

class MRHMapOpenCamButton: RscButtonMRHSAT
{
	idc = 1210;
	show = false;
	action = "ctrlshow [1777, false];ctrlshow [1210, false];";/////averif
	text = $STR_MRH_RETURNTOSATVIEW; //--- ToDo: Localize;
	x = 0.434375 * safezoneW + safezoneX;
	y = 0.584 * safezoneH + safezoneY;
	w = 0.105 * safezoneW;
	h = 0.028 * safezoneH;
};


class MRHChangeVision: RscButtonMRHSAT
{
	idc = 1600;
	show = false;
	text = $STR_MRH_CHANGEVIEWMODE; //--- ToDo: Localize;
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.118125 * safezoneW;
	h = 0.028 * safezoneH;
	action = "ctrlshow [2100, true];";
};

class MRHOpenMapButton: RscButtonMRHSAT
{
	idc = 1601;
	show = false;
	//onUnload = "ctrlshow [1210, false];";
	action = "ctrlshow [1777, true]; ctrlshow [1210, true];";
	text = $STR_MRH_CHANGESATPOS; //--- ToDo: Localize;
	x = 0.36875 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.144375 * safezoneW;
	h = 0.028 * safezoneH;
};



class MRHSelectView: RscComboMRHSAT
{
	idc = 2100;
	show = false;
	text = "Default"; //--- ToDo: Localize;
	x = 0.257187 * safezoneW + safezoneX;
	y = 0.15 * safezoneH + safezoneY;
	w = 0.21 * safezoneW;
	h = 0.028 * safezoneH;
	onLBSelChanged = "_value = _this select 1; [_value] call MRH_fnc_SelectViewMode;ctrlshow [2100, false];";
	
    
};
class MRHClosebutton: RscButtonMRHSAT
{
	idc = 1602;
	text = $STR_MRH_CLOSE; //--- ToDo: Localize;
	action = "Closedialog 0;";
	x = 0.513125 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.07875 * safezoneW;
	h = 0.028 * safezoneH;
};

class DialogBoxGroup : RscControlsGroupMRHSAT
{
idc = 5001;
show = false;

	class controls
	{
class MRHChooseInitBackGround: RscPictureMRHSAT
{
	idc = 5002;
	text = "\MRHSatellite\Paa\interfacewindow.paa";

	x = 0.381875 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.223125 * safezoneW;
	h = 0.154 * safezoneH;
};
class MRHAcceptButton: RscButtonMRHSAT
{
	idc = 5003;

	text = $STR_MRH_ACCEPT; //--- ToDo: Localize;
	x = 0.408125 * safezoneW + safezoneX;
	y = 0.416 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHRefuseButton: RscButtonMRHSAT
{
	idc = 5004;

	text = $STR_MRH_CANCEL; //--- ToDo: Localize;
	action = "ctrlshow [5001, false];"                //"Closedialog ((findDisplay 9751 5001;";
	x = 0.52625 * safezoneW + safezoneX;
	y = 0.416 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHWarningBoxText: RscStructuredTextMRHSAT
{
	idc = 5006;

	text = "Dummytesttext";
	x = 0.388437 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.21 * safezoneW;
	h = 0.084 * safezoneH;
};
	};
};
//added in 1.4
class MRHCompass: RscPictureMRHSAT
{
	idc = 1215;
	show = false;
	text = "\MRHSatellite\Paa\compass.paa";
	x = 0.637812 * safezoneW + safezoneX;
	y = 0.472 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.098 * safezoneH;
};
class MRHBearingText: RscStructuredTextMRHSAT
{
	idc = 1105;
	show = false;
	text = "bearing 360"; //--- ToDo: Localize;
	x = 0.63125 * safezoneW + safezoneX;
	y = 0.444 * safezoneH + safezoneY;
	w = 0.065625 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHElevationDisplay: RscStructuredTextMRHSAT
{
	idc = 1106;
	show = false;
	text = "Terrain elevation: 1200m"; //--- ToDo: Localize;
	x = 0.276875 * safezoneW + safezoneX;
	y = 0.472 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHGridCoordDisplay: RscStructuredTextMRHSAT
{
	idc = 1107;
	show = false;
	text = "Grid: 000111"; //--- ToDo: Localize;
	x = 0.276875 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};

//end1.4 add
class MRHStaticsoverlay: RscPictureMRHSAT
{
	idc = 1333;
	text = "\MRHSatellite\Paa\overlaystatics.paa";
		colorText[] = 
	{
		1,
		1,
		1,
		0.4 //transparencedeloverlay
	};
	x = 0.250625 * safezoneW + safezoneX;
	y = 0.122 * safezoneH + safezoneY;
	w = 0.49875 * safezoneW;
	h = 0.49 * safezoneH;
};

class MRHProgressBar: RscProgressMRHSAT
{
	idc = 6203;
	show =false;
	colorFrame[] = {0.5,0.5,0.5,1};
	colorBar[] = {0,1,0,1};
	//texture = "#(argb,0,8,0)color(1,1,1,1)";
	text = "test"; //#(argb,8,8,3)color(1,1,1,1)
	x = 0.292231 * safezoneW + safezoneX;
	y = 0.51512 * safezoneH + safezoneY;
	w = 0.426562 * safezoneW;
	h = 0.042 * safezoneH;
};

class MRHSatMovingTextBackground: RscPictureMRHSAT
{
	idc = 6204;
	show =false;
	text = "\MRHSatellite\Paa\interfacewindow.paa";
	x = 0.618125 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.0984375 * safezoneW;
	h = 0.14 * safezoneH;
};

class MRHMovingSatTextZone: RscStructuredTextMRHSAT
{
	idc = 6205;
	show =false;
	text = "Dummytext";
	x = 0.624687 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.0853125 * safezoneW;
	h = 0.112 * safezoneH;
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};