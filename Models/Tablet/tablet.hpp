class CBA_MiscItem;
class CBA_MiscItem_ItemInfo;
//class InventoryItem_Base_F;
    
class MRH_BluForTransponder: CBA_MiscItem
{
	author = "Mr H.";
	displayName = "Universal Tactical Display";
	model = "MRHSatellite\Models\Tablet\tablet.p3d";
	scope = 2;      
	scopeArsenal = 2;
	scopeCurator = 2;
	 //simulation= "ItemMineDetector"
	editorCategory = "EdCat_Equipment";
	editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Default\Prop.jpg";
	editorSubcategory = "EdSubcat_InventoryItems";
	picture = "\MRHSatellite\paa\transponder.paa";
	descriptionShort = "Transponder";
	//type = 0;
	ace_arsenal_hide = 0;
	class ItemInfo: CBA_MiscItem_ItemInfo
			{
				mass=10;
			};
};

