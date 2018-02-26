
    class Logic;
    class Module_F: Logic { class ArgumentsBaseUnits { class Units; }; class ModuleDescription { class AnyBrain; }; };

    class MRH_SAT_POSANDSPEEDINIT_MODULE: Module_F {
        scope = 2;
        displayName = $STR_MRH_MODULESATPARAMSDISPLAYNAME;
        author = "Mr. H";
        category = "Satellite";

        function = "MRH_fnc_InitFromModule";//aremplir
        functionPriority = 1;
        isGlobal = 2;
        isTriggerActivated = 0;

        // Menu displayed when the module is placed or double-clicked on by Zeus
        //curatorInfoType = "RscDisplayAttributeModuleNuke";

        // Module arguments
        class Arguments {


            class SatSpeed {
                displayName = $STR_MRH_SATSPEEDDISPLAYNAME;
                description = $STR_MRH_SATSPEEDSETTINGDESCRIPTION;
				//tooltip = "Vitesse de déplacement du satellite en km/h(défaut 100kmh)";
                defaultValue = "100";
            };

        };

        class ModuleDescription: ModuleDescription {
            description = $STR_MRH_MODULEDESCRIPTION;
			sync[] = {"LocationArea_F"}; 
						class LocationArea_F
			{
				description[] = { // Multi-line descriptions are supported
					"First line",
					"Second line"
				};
				position = 1; // Position is taken into effect
				direction = 0; // Direction is taken into effect
				optional = 1; // Synced entity is optional
				duplicate = 0; // Multiple entities of this type can be synced
				synced[] = {"AnyBrain"}; // Pre-define entities like "AnyBrain" can be used. See the list below
			};
            
        };
    };



