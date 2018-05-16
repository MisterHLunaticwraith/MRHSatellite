class MRHSatelliteUTD
{
	idd=9751;
	movingenable=true;
	onUnload  = player setVariable ["MRHInterfaceIsCalledFromTablet",false];
	class controls 
	{

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Giqaqu)
////////////////////////////////////////////////////////

class MRHLaptopSat: RscPictureMRHSAT
{
	idc = 1200;
	moving = true;
	text = "\MRHSatellite\Paa\tabletinterface.paa";
	x = 0.224375 * safezoneW + safezoneX;
	y = 0.15 * safezoneH + safezoneY;
	w = 0.5775 * safezoneW;
	h = 0.658 * safezoneH;
};
class MRHScreenzone: RscPictureMRHSAT
{
	idc = 1201;
	moving = true;
	text = "\MRHSatellite\Paa\welcomescreen.paa";
	//onMouseButtonClick = "hint ""testé""; ";//[_this] call MRH_fnc_ConvertCoordinates;
	x = 0.349063 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.308437 * safezoneW;
	h = 0.364 * safezoneH;
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
	moving = true;
	show = false;
	text = "\MRHSatellite\Paa\screenmarks.paa";
	
	x = 0.342499 * safezoneW + safezoneX;
	y = 0.29 * safezoneH + safezoneY;
	w = 0.321562 * safezoneW;
	h = 0.378 * safezoneH;
};
class MRHAltitudeName: RscStructuredTextMRHSAT
{
	idc = 1204;
	moving = true;
	show = false;
	text = "Altitude";
	x = 0.493437 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHAltitudeDisplay: RscStructuredTextMRHSAT
{
	idc = 1205;
	moving = true;
	show = false;
	text = "AltDisplay";
	x = 0.5525 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.039375 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHViewModeName: RscStructuredTextMRHSAT
{
	idc = 1206;
	moving = true;
	show = false;
	text = "View Mode";
	x = 0.493437 * safezoneW + safezoneX;
	y = 0.374 * safezoneH + safezoneY;
	w = 0.0590625 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHViewModeDisplay: RscStructuredTextMRHSAT
{
	idc = 1207;
	moving = true;
	show = false;
	text = "ViewDisplay";
	x = 0.5525 * safezoneW + safezoneX;
	y = 0.374 * safezoneH + safezoneY;
	w = 0.05 * safezoneW; //w = 0.039375 * safezoneW;
	h = 0.03 * safezoneH;//h = 0.028 * safezoneH;
};
class MRHFullScreenButton: RscButtonMRHSAT
{
	idc = 1209;
	moving = true;
	show = false;
	action = "closedialog 0; call MRH_fnc_FullScreenCam";/////averif
	text = $STR_MRH_GO_FULLSCREEN; //--- ToDo: Localize;
	x = 0.47375 * safezoneW + safezoneX;
	y = 0.654 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.014 * safezoneH;
};
class MRHSlider: RscSliderMRHSAT
{
	idc = 1202;
	moving = true;
	show = false;
	 type = CT_SLIDER; 
	 style = SL_VERT;
	x = 0.637812 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.0196875 * safezoneW;
	h = 0.322 * safezoneH;
	    color[] = { 1, 1, 1, 1 }; 
        coloractive[] = { 1, 0, 0, 0.5 };
	//onLoad = "call MRH_fnc_SetSatRange;";
	onSliderPosChanged = "((findDisplay 9751) displayCtrl 1205) ctrlSetStructuredText parsetext (str (round (_this select 1))); _cam = uinameSpace getVariable ""MRH_SATCAM""; _cam setPos [(getpos _cam select 0), (getpos _cam select 1), (_this select 1)];[player] call MRH_fnc_GlobalCamMove;";
};
/*
	};
};
*/

class MRHMapTest : RscMapControlMRHSAT
{
	idc = 1777;
	moving = true;
	show = false;
	onMouseButtonClick = "hint localize ""STR_MRH_NEWPOSHINT""; [_this] call MRH_fnc_ConvertCoordinates;";
	//onMapSingleClick = "hint ""bouhyah""";
	//text = "#(argb,8,8,3)color(1,1,1,1)";
	x = 0.349063 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.308437 * safezoneW;
	h = 0.364 * safezoneH;
};

class MRHMapOpenCamButton: RscButtonMRHSAT
{
	idc = 1210;
	moving = true;
	show = false;
	action = "ctrlshow [1777, false];ctrlshow [1210, false];";/////averif
	text = $STR_MRH_RETURNTOSATVIEW; //--- ToDo: Localize;
	x = 0.427812 * safezoneW + safezoneX;
	y = 0.64 * safezoneH + safezoneY;
	w = 0.124687 * safezoneW;
	h = 0.028 * safezoneH;
};


class MRHChangeVision: RscButtonMRHSAT
{
	idc = 1600;
	moving = true;
	show = false;
	text = $STR_MRH_CHANGEVIEWMODE; //--- ToDo: Localize;
	x = 0.355625 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.111562 * safezoneW;
	h = 0.028 * safezoneH;
	action = "ctrlshow [2100, true];";
};

class MRHOpenMapButton: RscButtonMRHSAT
{
	idc = 1601;
	moving = true;
	show = false;
	//onUnload = "ctrlshow [1210, false];";
	action = "ctrlshow [1777, true]; ctrlshow [1210, true];";
	text = $STR_MRH_CHANGESATPOS; //--- ToDo: Localize;
	x = 0.467187 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.137812 * safezoneW;
	h = 0.028 * safezoneH;
};



class MRHSelectView: RscComboMRHSAT
{
	idc = 2100;
	moving = true;
	show = false;
	text = "Default"; //--- ToDo: Localize;
	x = 0.355625 * safezoneW + safezoneX;
	y = 0.332 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.014 * safezoneH;
	onLBSelChanged = "_value = _this select 1; [_value] call MRH_fnc_SelectViewMode;ctrlshow [2100, false];";
	
    
};
class MRHClosebutton: RscButtonMRHSAT
{
	idc = 1602;
	moving = true;
	text = "";
	action = "Closedialog 0;";
	x = 0.703437 * safezoneW + safezoneX;
	y = 0.318 * safezoneH + safezoneY;
	w = 0.0196875 * safezoneW;
	h = 0.042 * safezoneH;
		colorText[] = 
	{
		0,
		0,
		0,
		0
	};
	colorDisabled[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackground[] = 
	{
		0,
		0,
		0,
		0
	};
		colorBackgroundDisabled[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBackgroundActive[] = 
	{
		0,
		0,
		0,
		0
	};
	colorFocused[] = 
	{
		0,
		0,
		0,
		0
	};
	colorShadow[] = 
	{
		0,
		0,
		0,
		0
	};
	colorBorder[] = 
	{
		0,
		0,
		0,
		0
	};
};

class DialogBoxGroup : RscControlsGroupMRHSAT
{
idc = 5001;
moving = true;
show = false;

	class controls
	{
class MRHChooseInitBackGround: RscPictureMRHSAT
{
	idc = 5002;
	moving = true;
	text = "\MRHSatellite\Paa\interfacewindow.paa";

	x = 0.388437 * safezoneW + safezoneX;
	y = 0.388 * safezoneH + safezoneY;
	w = 0.216562 * safezoneW;
	h = 0.21 * safezoneH;
};
class MRHAcceptButton: RscButtonMRHSAT
{
	idc = 5003;
	moving = true;

	text = $STR_MRH_ACCEPT; //--- ToDo: Localize;
	x = 0.42125 * safezoneW + safezoneX;
	y = 0.556 * safezoneH + safezoneY;
	w = 0.0459375 * safezoneW;
	h = 0.028 * safezoneH;
};
class MRHRefuseButton: RscButtonMRHSAT
{
	idc = 5004;
	moving = true;

	text = $STR_MRH_CANCEL; //--- ToDo: Localize;
	action = "ctrlshow [5001, false];"                //"Closedialog ((findDisplay 9751 5001;";
	x = 0.519688 * safezoneW + safezoneX;
	y = 0.556 * safezoneH + safezoneY;
	w = 0.0525 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHWarningBoxText: RscStructuredTextMRHSAT
{
	idc = 5006;
	moving = true;

	text = "Dummytesttext";
	x = 0.395 * safezoneW + safezoneX;
	y = 0.416 * safezoneH + safezoneY;
	w = 0.203437 * safezoneW;
	h = 0.14 * safezoneH;
};
	};
};
//added in 1.4
class MRHCompass: RscPictureMRHSAT
{
	idc = 1215;
	moving = true;
	show = false;
	text = "\MRHSatellite\Paa\compass.paa";
	x = 0.598437 * safezoneW + safezoneX;
	y = 0.584 * safezoneH + safezoneY;
	w = 0.0328125 * safezoneW;
	h = 0.056 * safezoneH;
};
class MRHBearingText: RscStructuredTextMRHSAT
{
	idc = 1105;
	moving = true;
	show = false;
	text = "bearing 360"; //--- ToDo: Localize;
	x = 0.565625 * safezoneW + safezoneX;
	y = 0.542 * safezoneH + safezoneY;
	w = 0.08 * safezoneW;//orgw = 0.0590625 * safezoneW;
	h = 0.03 * safezoneH;//org h = 0.028 * safezoneH;
};

class MRHElevationDisplay: RscStructuredTextMRHSAT
{
	idc = 1106;
	moving = true;
	show = false;
	text = "Terrain elevation: 1200m"; //--- ToDo: Localize;
	x = 0.362187 * safezoneW + safezoneX;
	y = 0.346 * safezoneH + safezoneY;
	w = 0.11 * safezoneW;//w = 0.091875 * safezoneW;
	h = 0.03 * safezoneH;//h = 0.028 * safezoneH;
};
class MRHGridCoordDisplay: RscStructuredTextMRHSAT
{
	idc = 1107;
	moving = true;
	show = false;
	text = "Grid: 000111"; //--- ToDo: Localize;
	x = 0.362187 * safezoneW + safezoneX;
	y = 0.374 * safezoneH + safezoneY;
	w = 0.091875 * safezoneW;
	h = 0.028 * safezoneH;
};

//end1.4 add
class MRHStaticsoverlay: RscPictureMRHSAT
{
	idc = 1333;
	moving = true;
	text = "\MRHSatellite\Paa\overlaystatics.paa";
		colorText[] = 
	{
		1,
		1,
		1,
		0.4 //transparencedeloverlay
	};
	x = 0.349063 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.308437 * safezoneW;
	h = 0.364 * safezoneH;
};

class MRHProgressBar: RscProgressMRHSAT
{
	idc = 6203;
	moving = true;
	show =false;
	colorFrame[] = {0.5,0.5,0.5,1};
	colorBar[] = {0,1,0,1};
	//texture = "#(argb,0,8,0)color(1,1,1,1)";
	text = "test"; //#(argb,8,8,3)color(1,1,1,1)
	x = 0.388438 * safezoneW + safezoneX;
	y = 0.619 * safezoneH + safezoneY;
	w = 0.203437 * safezoneW;
	h = 0.028 * safezoneH;
};

class MRHSatMovingTextBackground: RscPictureMRHSAT
{
	idc = 6204;
	moving = true;
	show =false;
	text = "\MRHSatellite\Paa\interfacewindow.paa";
	x = 0.388437 * safezoneW + safezoneX;
	y = 0.388 * safezoneH + safezoneY;
	w = 0.216562 * safezoneW;
	h = 0.21 * safezoneH;
};

class MRHMovingSatTextZone: RscStructuredTextMRHSAT
{
	idc = 6205;
	moving = true;
	show =false;
	text = "Dummytext";
	x = 0.395 * safezoneW + safezoneX;
	y = 0.416 * safezoneH + safezoneY;
	w = 0.203437 * safezoneW;
	h = 0.14 * safezoneH;
};

class MRHSignalPic: RscPictureMRHSAT
{
	idc = 1203;
	moving = true;
	text = "\MRHSatellite\Paa\Signal\signallost.paa";
	x = 0.611562 * safezoneW + safezoneX;
	y = 0.304 * safezoneH + safezoneY;
	w = 0.0196875 * safezoneW;
	h = 0.028 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};
