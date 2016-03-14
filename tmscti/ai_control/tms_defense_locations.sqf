//Pool of locations which spawn resistance AI groups

//Adjust the activation zone size
_activation_radius = 800;

_tms_tl_ioannina = createTrigger ["EmptyDetector", (getMarkerPos "tms_tl_ioannina")]; //Location
_tms_tl_ioannina setTriggerArea [_activation_radius, _activation_radius, 0, false]; //Activation area, Rectangle shaped?
_tms_tl_ioannina setTriggerActivation ["ANY", "PRESENT", false]; // Activated by?, is in Area?, Repeat?
_tms_tl_ioannina setTriggerText "['Ioannina', 3, 0, 'NULL']"; // Displayname, Tier, Supplypoints multiplier, connnected supply locations
_tms_tl_ioannina setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_tl_altismilitarybase = createTrigger ["EmptyDetector", (getMarkerPos "altis_military_base_helipad")]; 
_tms_tl_altismilitarybase setTriggerArea [_activation_radius, _activation_radius, 0, false]; 
_tms_tl_altismilitarybase setTriggerActivation ["ANY", "PRESENT", false]; 
_tms_tl_altismilitarybase setTriggerText "['Altis Military Base', 8, 0, 'NULL']";
_tms_tl_altismilitarybase setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_airbase_airfield = createTrigger ["EmptyDetector", (getMarkerPos "airbase_airfield")];
_tms_sl_airbase_airfield setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_airbase_airfield setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_airbase_airfield setTriggerText "['Altis Airbase', 5, 0, 'NULL']";
_tms_sl_airbase_airfield setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_aac_airfield = createTrigger ["EmptyDetector", (getMarkerPos "aac_airfield")];
_tms_sl_aac_airfield setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_aac_airfield setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_aac_airfield setTriggerText "['AAC Airfield', 6, 0, 'NULL']";
_tms_sl_aac_airfield setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_molos_airfield = createTrigger ["EmptyDetector", (getMarkerPos "molos_airfield")];
_tms_sl_molos_airfield setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_molos_airfield setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_molos_airfield setTriggerText "['Molos Airfield', 6, 0, 'NULL']";
_tms_sl_molos_airfield setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_krya_nera_airstrip = createTrigger ["EmptyDetector", (getMarkerPos "krya_nera_airfield")];
_tms_sl_krya_nera_airstrip setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_krya_nera_airstrip setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_krya_nera_airstrip setTriggerText "['Krya Nera Airstrip', 5, 0, 'NULL']";
_tms_sl_krya_nera_airstrip setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_selakano_airfield = createTrigger ["EmptyDetector", (getMarkerPos "selakano_airfield")];
_tms_sl_selakano_airfield setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_selakano_airfield setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_selakano_airfield setTriggerText "['Selakano Airfield', 5, 0, 'NULL']";
_tms_sl_selakano_airfield setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_military_hill_outpost = createTrigger ["EmptyDetector", (getMarkerPos "military_hill_helipad")];
_tms_sl_military_hill_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_military_hill_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_military_hill_outpost setTriggerText "['Military Hill Outpost', 3, 0, 'NULL']";
_tms_sl_military_hill_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_telos_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "telos_military_outpost_helipad")];
_tms_sl_telos_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_telos_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_telos_military_outpost setTriggerText "['Telos Military Outpost', 4, 0, 'NULL']";
_tms_sl_telos_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_pefkas_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "pefkas_military_outpost_helipad")];
_tms_sl_pefkas_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_pefkas_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_pefkas_military_outpost setTriggerText "['Pefkas Military Outpost', 4, 0, 'NULL']";
_tms_sl_pefkas_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_agios_georgios_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "agios_georgios_military_outpost_helipad")];
_tms_sl_agios_georgios_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_agios_georgios_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_agios_georgios_military_outpost setTriggerText "['Agios Georgios Military Outpost', 4, 0, 'NULL']";
_tms_sl_agios_georgios_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_pyrgos_military_base = createTrigger ["EmptyDetector", (getMarkerPos "pyrgos_military_base_helipad")];
_tms_sl_pyrgos_military_base setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_pyrgos_military_base setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_pyrgos_military_base setTriggerText "['Pyrgos Military Base', 3, 0, 'NULL']";
_tms_sl_pyrgos_military_base setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_fort_vikos = createTrigger ["EmptyDetector", (getMarkerPos "fort_vikos_helipad")];
_tms_sl_fort_vikos setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_fort_vikos setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_fort_vikos setTriggerText "['Fort Vikos', 2, 0, 'NULL']";
_tms_sl_fort_vikos setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_vikos_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "vikos_military_outpost_helipad")];
_tms_sl_vikos_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_vikos_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_vikos_military_outpost setTriggerText "['Vikos Military Outpost', 2, 0, 'NULL']";
_tms_sl_vikos_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_zaros_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "zaros_military_outpost_helipad")];
_tms_sl_zaros_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_zaros_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_zaros_military_outpost setTriggerText "['Zaros Military Outpost', 2, 0, 'NULL']";
_tms_sl_zaros_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_altis_cargo_harbor = createTrigger ["EmptyDetector", (getMarkerPos "altis_cargo_harbor_harbor")];
_tms_sl_altis_cargo_harbor setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_altis_cargo_harbor setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_altis_cargo_harbor setTriggerText "['Altis Cargo Harbor', 4, 0, 'NULL']";
_tms_sl_altis_cargo_harbor setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_anthrakia_docks = createTrigger ["EmptyDetector", (getMarkerPos "anthrakia_docks_harbor")];
_tms_sl_anthrakia_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_anthrakia_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_anthrakia_docks setTriggerText "['Anthrakia Docks', 2, 0, 'NULL']";
_tms_sl_anthrakia_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_sideras_docks = createTrigger ["EmptyDetector", (getMarkerPos "sideras_docks_harbor")];
_tms_sl_sideras_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_sideras_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_sideras_docks setTriggerText "['Sideras Docks', 2, 0, 'NULL']";
_tms_sl_sideras_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_iraklia_docks = createTrigger ["EmptyDetector", (getMarkerPos "iraklia_docks_harbor")];
_tms_sl_iraklia_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_iraklia_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_iraklia_docks setTriggerText "['Iraklia Docks', 1, 0, 'NULL']";
_tms_sl_iraklia_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_pefkas_docks = createTrigger ["EmptyDetector", (getMarkerPos "pefkas_docks_harbor")];
_tms_sl_pefkas_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_pefkas_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_pefkas_docks setTriggerText "['Pefkas Docks', 1, 0, 'NULL']";
_tms_sl_pefkas_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_agios_georgios_docks = createTrigger ["EmptyDetector", (getMarkerPos "agios_georgios_docks_harbor")];
_tms_sl_agios_georgios_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_agios_georgios_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_agios_georgios_docks setTriggerText "['Agios Georgios Docks', 1, 0, 'NULL']";
_tms_sl_agios_georgios_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_kalithea_harbor = createTrigger ["EmptyDetector", (getMarkerPos "kalithea_harbor_harbor")];
_tms_sl_kalithea_harbor setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_kalithea_harbor setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_kalithea_harbor setTriggerText "['Kalithea Harbor', 1, 0, 'NULL']";
_tms_sl_kalithea_harbor setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_cap_zefyris_docks = createTrigger ["EmptyDetector", (getMarkerPos "zefyris_docks_harbor")];
_tms_sl_cap_zefyris_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_cap_zefyris_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_cap_zefyris_docks setTriggerText "['Cap Zefyris Docks', 1, 0, 'NULL']";
_tms_sl_cap_zefyris_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_agia_triada_docks = createTrigger ["EmptyDetector", (getMarkerPos "agia_triada_docks_harbor")];
_tms_sl_agia_triada_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_agia_triada_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_agia_triada_docks setTriggerText "['Agia Triada Docks', 1, 0, 'NULL']";
_tms_sl_agia_triada_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_nychi_docks = createTrigger ["EmptyDetector", (getMarkerPos "nychi_docks_harbor")];
_tms_sl_nychi_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_nychi_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_nychi_docks setTriggerText "['Nychi Docks', 1, 0, 'NULL']";
_tms_sl_nychi_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_pyrgos_cargo_harbor = createTrigger ["EmptyDetector", (getMarkerPos "pyrgos_cargo_harbor_harbor")];
_tms_sl_pyrgos_cargo_harbor setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_pyrgos_cargo_harbor setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_pyrgos_cargo_harbor setTriggerText "['Pyrgos Cargo Harbor', 3, 0, 'NULL']";
_tms_sl_pyrgos_cargo_harbor setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_mazi_docks = createTrigger ["EmptyDetector", (getMarkerPos "mazi_docks_harbor")];
_tms_sl_mazi_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_mazi_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_mazi_docks setTriggerText "['Mazi Docks', 3, 0, 'NULL']";
_tms_sl_mazi_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_trachia_docks = createTrigger ["EmptyDetector", (getMarkerPos "trachia_docks_harbor")];
_tms_sl_trachia_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_trachia_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_trachia_docks setTriggerText "['Trachia Docks', 1, 0, 'NULL']";
_tms_sl_trachia_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_aktinarki_docks = createTrigger ["EmptyDetector", (getMarkerPos "aktinarki_docks_harbor")];
_tms_sl_aktinarki_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_aktinarki_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_aktinarki_docks setTriggerText "['Aktinarki Docks', 1, 0, 'NULL']";
_tms_sl_aktinarki_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_cap_kategidis_docks = createTrigger ["EmptyDetector", (getMarkerPos "cap_kategidis_docks_harbor")];
_tms_sl_cap_kategidis_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_cap_kategidis_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_cap_kategidis_docks setTriggerText "['Cap Kategidis Docks', 1, 0, 'NULL']";
_tms_sl_cap_kategidis_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_polemistia_docks = createTrigger ["EmptyDetector", (getMarkerPos "polemistia_docks_harbor")];
_tms_sl_polemistia_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_polemistia_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_polemistia_docks setTriggerText "['Polemistia Docks', 1, 0, 'NULL']";
_tms_sl_polemistia_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_molos_harbor = createTrigger ["EmptyDetector", (getMarkerPos "molos_harbor_harbor")];
_tms_sl_molos_harbor setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_molos_harbor setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_molos_harbor setTriggerText "['Molos Harbor', 2, 0, 'NULL']";
_tms_sl_molos_harbor setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_sagonisi_docks = createTrigger ["EmptyDetector", (getMarkerPos "sagonisi_docks_harbor")];
_tms_sl_sagonisi_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_sagonisi_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_sagonisi_docks setTriggerText "['Sagonisi Docks', 1, 0, 'NULL']";
_tms_sl_sagonisi_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_katalaki_docks = createTrigger ["EmptyDetector", (getMarkerPos "katalaki_docks_harbor")];
_tms_sl_katalaki_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_katalaki_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_katalaki_docks setTriggerText "['Katalaki Docks', 1, 0, 'NULL']";
_tms_sl_katalaki_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_neochori_harbor = createTrigger ["EmptyDetector", (getMarkerPos "neochori_harbor_harbor")];
_tms_sl_neochori_harbor setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_neochori_harbor setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_neochori_harbor setTriggerText "['Neochori Harbor', 2, 0, 'NULL']";
_tms_sl_neochori_harbor setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_stavros_docks = createTrigger ["EmptyDetector", (getMarkerPos "stavros_docks_harbor")];
_tms_sl_stavros_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_stavros_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_stavros_docks setTriggerText "['Stavros Docks', 2, 0, 'NULL']";
_tms_sl_stavros_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_lakka_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "lakka_military_outpost_helipad")];
_tms_sl_lakka_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_lakka_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_lakka_military_outpost setTriggerText "['Lakka Military Outpost', 3, 0, 'NULL']";
_tms_sl_lakka_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_zaros_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "zaros_drop_zone_para")];
_tms_sl_zaros_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_zaros_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_zaros_drop_zone setTriggerText "['Zaros Drop Zone', 2, 0, 'NULL']";
_tms_sl_zaros_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_agios_dionysios_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "agios_dionysios_drop_zone_para")];
_tms_sl_agios_dionysios_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_agios_dionysios_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_agios_dionysios_drop_zone setTriggerText "['Agios Dionysios Drop Zone', 2, 0, 'NULL']";
_tms_sl_agios_dionysios_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_aggelochori_docks = createTrigger ["EmptyDetector", (getMarkerPos "aggelochori_docks_harbor")];
_tms_sl_aggelochori_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_aggelochori_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_aggelochori_docks setTriggerText "['Aggelochori Docks', 2, 0, 'NULL']";
_tms_sl_aggelochori_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_kavala_harbor = createTrigger ["EmptyDetector", (getMarkerPos "kavala_harbor_harbor")];
_tms_sl_kavala_harbor setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_kavala_harbor setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_kavala_harbor setTriggerText "['Kavala Harbor', 3, 0, 'NULL']";
_tms_sl_kavala_harbor setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_kavala_pier = createTrigger ["EmptyDetector", (getMarkerPos "kavala_pier_harbor")];
_tms_sl_kavala_pier setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_kavala_pier setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_kavala_pier setTriggerText "['Kavala Pier', 3, 0, 'NULL']";
_tms_sl_kavala_pier setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_athanos_docks = createTrigger ["EmptyDetector", (getMarkerPos "athanos_docks_harbor")];
_tms_sl_athanos_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_athanos_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_athanos_docks setTriggerText "['Athanos Docks', 1, 0, 'NULL']";
_tms_sl_athanos_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_iremi_docks = createTrigger ["EmptyDetector", (getMarkerPos "iremi_docks_harbor")];
_tms_sl_iremi_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_iremi_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_iremi_docks setTriggerText "['Iremi Docks', 1, 0, 'NULL']";
_tms_sl_iremi_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_zaros_docks = createTrigger ["EmptyDetector", (getMarkerPos "zaros_docks_harbor")];
_tms_sl_zaros_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_zaros_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_zaros_docks setTriggerText "['Zaros Docks', 1, 0, 'NULL']";
_tms_sl_zaros_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_therisa_docks = createTrigger ["EmptyDetector", (getMarkerPos "therisa_docks_harbor")];
_tms_sl_therisa_docks setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_therisa_docks setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_therisa_docks setTriggerText "['Therisa Docks', 1, 0, 'NULL']";
_tms_sl_therisa_docks setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_athira_military_outpost = createTrigger ["EmptyDetector", (getMarkerPos "athira_military_outpost_helipad")];
_tms_sl_athira_military_outpost setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_athira_military_outpost setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_athira_military_outpost setTriggerText "['Athira Military Outpost', 2, 0, 'NULL']";
_tms_sl_athira_military_outpost setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_limni_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "limni_drop_zone_para")];
_tms_sl_limni_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_limni_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_limni_drop_zone setTriggerText "['Limni Drop Zone', 2, 0, 'NULL']";
_tms_sl_limni_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_shalkeia_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "shalkeia_drop_zone_para")];
_tms_sl_shalkeia_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_shalkeia_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_shalkeia_drop_zone setTriggerText "['Shalkeia Drop Zone', 2, 0, 'NULL']";
_tms_sl_shalkeia_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_faronaki_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "faronaki_beachhead")];
_tms_sl_faronaki_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_faronaki_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_faronaki_beachhead setTriggerText "['Faronaki Beachhead', 2, 0, 'NULL']";
_tms_sl_faronaki_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_ekali_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "ekali_beachhead")];
_tms_sl_ekali_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_ekali_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_ekali_beachhead setTriggerText "['Ekali Beachhead', 2, 0, 'NULL']";
_tms_sl_ekali_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_selakano_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "selakano_beachhead")];
_tms_sl_selakano_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_selakano_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_selakano_beachhead setTriggerText "['Selakano Beachhead', 2, 0, 'NULL']";
_tms_sl_selakano_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_delfinaki_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "delfinaki_beachhead")];
_tms_sl_delfinaki_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_delfinaki_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_delfinaki_beachhead setTriggerText "['Delfinaki Beachhead', 1, 0, 'NULL']";
_tms_sl_delfinaki_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_ammolofi_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "ammolofi_beachhead")];
_tms_sl_ammolofi_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_ammolofi_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_ammolofi_beachhead setTriggerText "['Ammolofi Beachhead', 1, 0, 'NULL']";
_tms_sl_ammolofi_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_ifestiona_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "ifestiona_drop_zone_para")];
_tms_sl_ifestiona_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_ifestiona_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_ifestiona_drop_zone setTriggerText "['Ifestiona Drop Zone', 2, 0, 'NULL']";
_tms_sl_ifestiona_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_frini_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "frini_drop_zone_para")];
_tms_sl_frini_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_frini_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_frini_drop_zone setTriggerText "['Frini Drop Zone', 2, 0, 'NULL']";
_tms_sl_frini_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_thronos_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "thronos_drop_zone_para")];
_tms_sl_thronos_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_thronos_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_thronos_drop_zone setTriggerText "['Thronos Drop Zone', 2, 0, 'NULL']";
_tms_sl_thronos_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_stadium_landing_zone = createTrigger ["EmptyDetector", (getMarkerPos "athira_stadium_landing_zone_helipad")];
_tms_sl_stadium_landing_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_stadium_landing_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_stadium_landing_zone setTriggerText "['Stadium Landing Zone', 2, 0, 'NULL']";
_tms_sl_stadium_landing_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_xirolimni_landing_zone = createTrigger ["EmptyDetector", (getMarkerPos "xirolimni_landing_zone_helipad")];
_tms_sl_xirolimni_landing_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_xirolimni_landing_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_xirolimni_landing_zone setTriggerText "['Xirolimni Landing Zone', 2, 0, 'NULL']";
_tms_sl_xirolimni_landing_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_hill215_landing_zone = createTrigger ["EmptyDetector", (getMarkerPos "hill215_landing_zone_helipad")];
_tms_sl_hill215_landing_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_hill215_landing_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_hill215_landing_zone setTriggerText "['Hill 215 Landing Zone', 2, 0, 'NULL']";
_tms_sl_hill215_landing_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_agios_minas_drop_zone = createTrigger ["EmptyDetector", (getMarkerPos "agios_minas_drop_zone_para")];
_tms_sl_agios_minas_drop_zone setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_agios_minas_drop_zone setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_agios_minas_drop_zone setTriggerText "['Agios Minas Drop Zone', 2, 0, 'NULL']";
_tms_sl_agios_minas_drop_zone setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_oreokastro_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "oreokastro_beachhead")];
_tms_sl_oreokastro_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_oreokastro_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_oreokastro_beachhead setTriggerText "['Oreokastro Beachhead', 1, 0, 'NULL']";
_tms_sl_oreokastro_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_fotia_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "fotia_beachhead")];
_tms_sl_fotia_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_fotia_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_fotia_beachhead setTriggerText "['Fotia Beachhead', 1, 0, 'NULL']";
_tms_sl_fotia_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_agios_konstantions_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "agios_konstantinos_beachhead")];
_tms_sl_agios_konstantions_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_agios_konstantions_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_agios_konstantions_beachhead setTriggerText "['Agios Konstantinos Beachhead', 1, 0, 'NULL']";
_tms_sl_agios_konstantions_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_fournos_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "fournos_beachhead")];
_tms_sl_fournos_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_fournos_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_fournos_beachhead setTriggerText "['Fournos Beachhead', 1, 0, 'NULL']";
_tms_sl_fournos_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_athanos_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "athanos_beachhead")];
_tms_sl_athanos_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_athanos_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_athanos_beachhead setTriggerText "['Athanos Beachhead', 1, 0, 'NULL']";
_tms_sl_athanos_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_panochori_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "panochori_beachhead")];
_tms_sl_panochori_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_panochori_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_panochori_beachhead setTriggerText "['Panochori Beachhead', 1, 0, 'NULL']";
_tms_sl_panochori_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];

_tms_sl_edessa_beachhead = createTrigger ["EmptyDetector", (getMarkerPos "edessa_beachhead")];
_tms_sl_edessa_beachhead setTriggerArea [_activation_radius, _activation_radius, 0, false];
_tms_sl_edessa_beachhead setTriggerActivation ["ANY", "PRESENT", false];
_tms_sl_edessa_beachhead setTriggerText "['Edessa Beachhead', 1, 0, 'NULL']";
_tms_sl_edessa_beachhead setTriggerStatements ["{isPlayer _x} count thisList > 0", "[[ThisTrigger], 'tmscti\ai_control\spawn_indie_ai_defenders.sqf'] remoteExec ['execVM', 2, false];", ""];
