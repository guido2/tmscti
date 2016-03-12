//Pool of locations which spawn resistance AI groups

//Adjust the activation zone size
_activation_radius = 800;

_tms_tl_ioannina = createTrigger ["EmptyDetector", (getMarkerPos "tms_tl_ioannina")]; //Location
_tms_tl_ioannina setTriggerArea [_activation_radius, _activation_radius, 0, false]; //Activation area, Rectangle shaped?
_tms_tl_ioannina setTriggerActivation ["ANY", "PRESENT", false]; // Activated by?, is in Area?, Repeat?
_tms_tl_ioannina setTriggerText "['Ioannina', 3, 0, 'NULL']"; // Displayname, Tier, Supplypoints multiplier, connnected supply locations
_tms_tl_ioannina setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_tl_altismilitarybase = createTrigger ["EmptyDetector", (getMarkerPos "altis_military_base_helipad")]; //Location
_tms_tl_altismilitarybase setTriggerArea [_activation_radius, _activation_radius, 0, false]; //Activation area, Rectangle shaped?
_tms_tl_altismilitarybase setTriggerActivation ["ANY", "PRESENT", false]; // Activated by?, is in Area?, Repeat?
_tms_tl_altismilitarybase setTriggerText "['Altis Military Base', 8, 0, 'NULL']"; // Displayname, Tier, Supplypoints multiplier, connnected supply locations
_tms_tl_altismilitarybase setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];
