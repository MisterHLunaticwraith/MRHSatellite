class Items_base_F;
class MRH_SatCom_Antenna: Items_base_F {
	author = "Mr H";
	mapSize = 0.07;
	class SimpleObject {
		eden = 1;
		animate[] = {};
		hide[] = {};
		verticalOffset = 0.131;
		verticalOffsetWorld = 0;
		init = "''";
	};
	editorPreview = "\MRHSatellite\Models\Antenna\antennapreview.jpg";
	//_generalMacro = "Land_BottlePlastic_V2_F";
	scope = 2;
	scopeCurator = 2;
	displayName = "Trivec Avant SATCOM Antenna";
	model = "\MRHSatellite\Models\Antenna\antennaMERGE.p3d";
	icon = "iconObject_circle";
	editorCategory = "EdCat_MRH_Sat";
	editorSubcategory = "EdSubcat_MRH_Objects";
	vehicleClass = "Small_items";
	destrType = "DestructNo";
	cost = 100;
	hiddenSelections[] = {};
	hiddenSelectionTextures[] = {};
	// ThingX
	simulation = "thingX";
	////
	ace_dragging_canDrag = 1;  // Can be dragged (0-no, 1-yes)
        ace_dragging_dragPosition[] = {0, 1.2, 0};  // Offset of the model from the body while dragging (same as attachTo)
        ace_dragging_dragDirection = 0;  // Model direction while dragging (same as setDir after attachTo)

        // Carrying
        ace_dragging_canCarry = 1;  // Can be carried (0-no, 1-yes)
        ace_dragging_carryPosition[] = {0, 1.2, 0};  // Offset of the model from the body while dragging (same as attachTo)
        ace_dragging_carryDirection = 0;  // Model direction while dragging (same as setDir after attachTo)
	/////
	class ACE_Actions {
		//class ACE_MainActions {
				class drink {
					displayName = "test";
					//condition = "";
					exceptions[] = {};
					statement = "systemchat str _target";
					icon = "";
					selection = "mem01";
					distance = 2;
				};
		//};
	};
	
};