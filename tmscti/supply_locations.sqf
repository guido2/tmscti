/*
This defines the data structures for the various supply locations that can be found on the map.
*/

tms_sl_cols_display_name = 0;
tms_sl_cols_map_marker = 1;
tms_sl_cols_tier = 2;
tms_sl_cols_delivery_positions = 3;
tms_sl_cols_airstrip_id = 4;
tms_sl_cols_side = 5;
tms_sl_cols_supply_points = 6;
tms_sl_cols_type = 7;

tms_supply_locations = ["tms_sl_saltlake_beachhead", "tms_sl_saltlake_airfield", "tms_sl_airbase_airfield", "tms_sl_aac_airfield", "tms_sl_molos_airfield", "tms_sl_krya_nera_airstrip", "tms_sl_selakano_airfield", "tms_sl_military_hill_outpost", "tms_sl_telos_military_outpost", "tms_sl_altis_military_base", "tms_sl_pefkas_military_outpost", "tms_sl_agios_georgios_military_outpost", "tms_sl_pyrgos_military_base", "tms_sl_fort_vikos", "tms_sl_vikos_military_outpost", "tms_sl_zaros_military_outpost", "tms_sl_altis_cargo_harbor", "tms_sl_anthrakia_docks", "tms_sl_sideras_docks", "tms_sl_iraklia_docks", "tms_sl_pefkas_docks", "tms_sl_agios_georgios_docks", "tms_sl_kalithea_harbor", "tms_sl_cap_zefyris_docks", "tms_sl_agia_triada_docks", "tms_sl_nychi_docks", "tms_sl_pyrgos_cargo_harbor", "tms_sl_mazi_docks", "tms_sl_trachia_docks", "tms_sl_aktinarki_docks", "tms_sl_cap_kategidis_docks", "tms_sl_polemistia_docks", "tms_sl_molos_harbor", "tms_sl_sagonisi_docks", "tms_sl_katalaki_docks", "tms_sl_neochori_harbor", "tms_sl_stavros_docks", "tms_sl_lakka_military_outpost", "tms_sl_zaros_drop_zone", "tms_sl_agios_dionysios_drop_zone", "tms_sl_aggelochori_docks", "tms_sl_kavala_harbor", "tms_sl_kavala_pier", "tms_sl_athanos_docks", "tms_sl_iremi_docks", "tms_sl_zaros_docks", "tms_sl_therisa_docks", "tms_sl_athira_military_outpost", "tms_sl_limni_drop_zone", "tms_sl_shalkeia_drop_zone", "tms_sl_faronaki_beachhead", "tms_sl_ekali_beachhead", "tms_sl_selakano_beachhead", "tms_sl_delfinaki_beachhead", "tms_sl_ammolofi_beachhead", "tms_sl_ifestiona_drop_zone", "tms_sl_frini_drop_zone", "tms_sl_thronos_drop_zone", "tms_sl_stadium_landing_zone", "tms_sl_xirolimni_landing_zone", "tms_sl_hill215_landing_zone", "tms_sl_agios_minas_drop_zone", "tms_sl_oreokastro_beachhead", "tms_sl_fotia_beachhead", "tms_sl_agios_konstantions_beachhead", "tms_sl_fournos_beachhead", "tms_sl_athanos_beachhead", "tms_sl_panochori_beachhead", "tms_sl_edessa_beachhead"]; // Variable names for the individual locations

if(isNil "tms_sl_saltlake_beachhead") then {
	tms_sl_saltlake_beachhead = ["Salt Lake Beachhead", // Display name of the location
		"salt_lake_beachhead", // Name of the map marker for this location
		2, // Tier
		["salt_lake_beachhead", "salt_lake_beachhead_lc_pos", false, "salt_lake_beachhead_sl_pos", "salt_lake_beachhead_heli_pos", false], // Positions for actual delivery, in order: Self delivery for amphibious vehicles, Delivery via landing craft, delivery via ship, Delivery via helicopter slingload, Self-delivery of helicopters, Paradrop via aircraft false where not possible at this location
		false, // ID of attached airstrip for airplane deliveries, false if not airstrip attached
		independent, // Side this location belongs to, independent means contested
		[500, 500], // Current amount of supply points for this location, for east and west, respectively
		"beachhead3" // Type of this supply location, one of "heli1", "heli2", "heli3", "beachhead1", "beachhead2", "beachhead3", "cargoport1", "cargoport2", "cargoport3", "dropzone1", "dropzone2", "dropzone3", airfield1", "airfield2" or "airport"
	];
};

if(isNil "tms_sl_saltlake_airfield") then {
	tms_sl_saltlake_airfield = ["Almyra Salt Lake Airstrip",
		"salt_lake_airfield", 
		3, 
		[false, false, false, "salt_lake_airfield_sl_pos", "salt_lake_airfield_heli_pos", false],
		5,
		independent, 
		[500, 500], 
		"airport" 
	];
};

if(isNil "tms_sl_airbase_airfield") then {
	tms_sl_airbase_airfield = ["Altis Airbase",
		"airbase_airfield", 
		3, 
		[false, false, false, "airbase_airfield_sl_pos", "airbase_airfield_heli_pos", false],
		0,
		independent, 
		[500, 500], 
		"airport" 
	];
};

if(isNil "tms_sl_aac_airfield") then {
	tms_sl_aac_airfield = ["AAC Airfield",
		"aac_airfield", 
		2, 
		[false, false, false, "aac_airfield_sl_pos", "aac_airfield_heli_pos", false],
		1,
		independent, 
		[500, 500], 
		"airfield2" 
	];
};

if(isNil "tms_sl_molos_airfield") then {
	tms_sl_molos_airfield = ["Molos Airfield",
		"molos_airfield", 
		2, 
		[false, false, false, "molos_airfield_sl_pos", "molos_airfield_heli_pos", false],
		4,
		independent, 
		[500, 500], 
		"airfield2" 
	];
};

if(isNil "tms_sl_krya_nera_airstrip") then {
	tms_sl_krya_nera_airstrip = ["Krya Nera Airstrip",
		"krya_nera_airfield", 
		1, 
		[false, false, false, "krya_nera_airfield_sl_pos", "krya_nera_airfield_heli_pos", false],
		2,
		independent, 
		[500, 500], 
		"airfield1" 
	];
};

if(isNil "tms_sl_selakano_airfield") then {
	tms_sl_selakano_airfield = ["Selakano Airfield",
		"selakano_airfield", 
		1, 
		[false, false, false, "selakano_airfield_sl_pos", "selakano_airfield_heli_pos", false],
		3,
		independent, 
		[500, 500], 
		"airfield1" 
	];
};

if(isNil "tms_sl_military_hill_outpost") then {
	tms_sl_military_hill_outpost = ["Military Hill Outpost",
		"military_hill_helipad", 
		1, 
		[false, false, false, "military_hill_helipad_sl_pos", "military_hill_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"helipad1" 
	];
};

if(isNil "tms_sl_telos_military_outpost") then {
	tms_sl_telos_military_outpost = ["Telos Military Outpost",
		"telos_military_outpost_helipad", 
		2, 
		[false, false, false, "telos_military_outpost_helipad_sl_pos", "telos_military_outpost_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"cargoport2" 
	];
};

if(isNil "tms_sl_altis_military_base") then {
	tms_sl_altis_military_base = ["Altis Military Base",
		"altis_military_base_helipad", 
		3, 
		[false, false, false, "altis_military_base_helipad_sl_pos", "altis_military_base_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"cargoport3" 
	];
};

if(isNil "tms_sl_pefkas_military_outpost") then {
	tms_sl_pefkas_military_outpost = ["Pefkas Military Outpost",
		"pefkas_military_outpost_helipad", 
		2, 
		[false, false, false, "pefkas_military_outpost_helipad_sl_pos", "pefkas_military_outpost_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"helipad2" 
	];
};

if(isNil "tms_sl_agios_georgios_military_outpost") then {
	tms_sl_agios_georgios_military_outpost = ["Agios Georgios Military Outpost",
		"agios_georgios_military_outpost_helipad", 
		3, 
		[false, false, false, "agios_georgios_military_outpost_helipad_sl_pos", "agios_georgios_military_outpost_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"cargoport3" 
	];
};

if(isNil "tms_sl_pyrgos_military_base") then {
	tms_sl_pyrgos_military_base = ["Pyrgos Military Base",
		"pyrgos_military_base_helipad", 
		3, 
		[false, false, false, "pyrgos_military_base_helipad_sl_pos", "pyrgos_military_base_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"helipad3" 
	];
};

if(isNil "tms_sl_fort_vikos") then {
	tms_sl_fort_vikos = ["Fort Vikos",
		"fort_vikos_helipad", 
		1, 
		[false, false, false, "pyrgos_military_base_helipad_sl_pos", false, false],
		false,
		independent, 
		[500, 500], 
		"cargoport1" 
	];
};

if(isNil "tms_sl_vikos_military_outpost") then {
	tms_sl_vikos_military_outpost = ["Vikos Military Outpost",
		"vikos_military_outpost_helipad", 
		1, 
		[false, false, false, "vikos_military_outpost_helipad_sl_pos", "vikos_military_outpost_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"helipad1" 
	];
};

if(isNil "tms_sl_zaros_military_outpost") then {
	tms_sl_zaros_military_outpost = ["Zaros Military Outpost",
		"zaros_military_outpost_helipad", 
		1, 
		[false, false, false, "zaros_military_outpost_helipad_sl_pos", "zaros_military_outpost_helipad_heli_pos", false],
		false,
		independent, 
		[500, 500], 
		"cargoport1" 
	];
};

if(isNil "tms_sl_altis_cargo_harbor") then {
	tms_sl_altis_cargo_harbor = ["Altis Cargo Harbor",
		"altis_cargo_harbor_harbor", 
		3, 
		[false, false, "altis_cargo_harbor_dock", false, false, false],
		false,
		independent, 
		[500, 500], 
		"harbor3" 
	];
};

if(isNil "tms_sl_anthrakia_docks") then {
	tms_sl_anthrakia_docks = ["Anthrakia Docks",
		"anthrakia_docks_harbor", 
		1, 
		[false, false, "anthrakia_docks_dock", false, false, false],
		false,
		independent, 
		[500, 500], 
		"harbor1" 
	];
};

if(isNil "tms_sl_sideras_docks") then {
	tms_sl_sideras_docks = ["Sideras Docks",
		"sideras_docks_harbor", 
		2, 
		[false, false, "sideras_docks_dock", false, false, false],
		false,
		independent, 
		[500, 500], 
		"harbor2" 
	];
};

if(isNil "tms_sl_iraklia_docks") then {
tms_sl_iraklia_docks = ["Iraklia Docks",
	"iraklia_docks_harbor", 
	1, 
	[false, false, "iraklia_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_pefkas_docks") then {
tms_sl_pefkas_docks = ["Pefkas Docks",
	"pefkas_docks_harbor", 
	1, 
	[false, false, "pefkas_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_agios_georgios_docks") then {
tms_sl_agios_georgios_docks = ["Agios Georgios Docks",
	"agios_georgios_docks_harbor", 
	2, 
	[false, false, "agios_georgios_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_kalithea_harbor") then {
tms_sl_kalithea_harbor = ["Kalithea Harbor",
	"kalithea_harbor_harbor", 
	2, 
	[false, false, "kalithea_harbor_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_cap_zefyris_docks") then {
tms_sl_cap_zefyris_docks = ["Cap Zefyris Docks",
	"zefyris_docks_harbor", 
	2, 
	[false, false, "zefyris_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_agia_triada_docks") then {
tms_sl_agia_triada_docks = ["Agia Triada Docks",
	"agia_triada_docks_harbor", 
	1, 
	[false, false, "agia_triada_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_nychi_docks") then {
tms_sl_nychi_docks = ["Nychi Docks",
	"nychi_docks_harbor", 
	1, 
	[false, false, "nychi_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_pyrgos_cargo_harbor") then {
tms_sl_pyrgos_cargo_harbor = ["Pyrgos Cargo Harbor",
	"pyrgos_cargo_harbor_harbor", 
	3, 
	[false, false, "pyrgos_cargo_harbor_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor3" 
	];
};

if(isNil "tms_sl_mazi_docks") then {
tms_sl_mazi_docks = ["Mazi Docks",
	"mazi_docks_harbor", 
	2, 
	[false, false, "mazi_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_trachia_docks") then {
tms_sl_trachia_docks = ["Trachia Docks",
	"trachia_docks_harbor", 
	1, 
	[false, false, "trachia_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_aktinarki_docks") then {
tms_sl_aktinarki_docks = ["Aktinarki Docks",
	"aktinarki_docks_harbor", 
	1, 
	[false, false, "aktinarki_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_cap_kategidis_docks") then {
tms_sl_cap_kategidis_docks = ["Cap Kategidis Docks",
	"cap_kategidis_docks_harbor", 
	1, 
	[false, false, "cap_kategidis_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_polemistia_docks") then {
tms_sl_polemistia_docks = ["Polemistia Docks",
	"polemistia_docks_harbor", 
	1, 
	[false, false, "polemistia_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_molos_harbor") then {
tms_sl_molos_harbor = ["Molos Harbor",
	"molos_harbor_harbor", 
	2, 
	[false, false, "molos_harbor_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_sagonisi_docks") then {
tms_sl_sagonisi_docks = ["Sagonisi Docks",
	"sagonisi_docks_harbor", 
	2, 
	[false, false, "sagonisi_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_katalaki_docks") then {
tms_sl_katalaki_docks = ["Katalaki Docks",
	"katalaki_docks_harbor", 
	1, 
	[false, false, "katalaki_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_neochori_harbor") then {
tms_sl_neochori_harbor = ["Neochori Harbor",
	"neochori_harbor_harbor", 
	2, 
	[false, false, "neochori_harbor_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor2" 
	];
};

if(isNil "tms_sl_stavros_docks") then {
tms_sl_stavros_docks = ["Stavros Docks",
	"stavros_docks_harbor", 
	1, 
	[false, false, "stavros_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_lakka_military_outpost") then {
tms_sl_lakka_military_outpost = ["Lakka Military Outpost",
	"lakka_military_outpost_helipad", 
	2, 
	[false, false, false, "lakka_military_outpost_helipad_sl_pos", "lakka_military_outpost_helipad_heli_pos", false],
	false,
	independent, 
	[500, 500], 
	"cargoport2" 
	];
};

if(isNil "tms_sl_zaros_drop_zone") then {
tms_sl_zaros_drop_zone = ["Zaros Drop Zone",
	"zaros_drop_zone_para", 
	3, 
	[false, false, false, false, false, "zaros_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone3" 
	];
};

if(isNil "tms_sl_agios_dionysios_drop_zone") then {
tms_sl_agios_dionysios_drop_zone = ["Agios Dionysios Drop Zone",
	"agios_dionysios_drop_zone_para", 
	2, 
	[false, false, false, false, false, "agios_dionysios_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone2" 
	];
};

if(isNil "tms_sl_aggelochori_docks") then {
tms_sl_aggelochori_docks = ["Aggelochori Docks",
	"aggelochori_docks_harbor", 
	1, 
	[false, false, "aggelochori_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_kavala_harbor") then {
tms_sl_kavala_harbor = ["Kavala Harbor",
	"kavala_harbor_harbor", 
	3, 
	[false, false, "kavala_harbor_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor3" 
	];
};

if(isNil "tms_sl_kavala_pier") then {
tms_sl_kavala_pier = ["Kavala Pier",
	"kavala_pier_harbor", 
	3, 
	[false, false, "kavala_pier_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor3" 
	];
};

if(isNil "tms_sl_athanos_docks") then {
tms_sl_athanos_docks = ["Athanos Docks",
	"athanos_docks_harbor", 
	1, 
	[false, false, "athanos_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_iremi_docks") then {
tms_sl_iremi_docks = ["Iremi Docks",
	"iremi_docks_harbor", 
	1, 
	[false, false, "iremi_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_zaros_docks") then {
tms_sl_zaros_docks = ["Zaros Docks",
	"zaros_docks_harbor", 
	1, 
	[false, false, "zaros_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_therisa_docks") then {
tms_sl_therisa_docks = ["Therisa Docks",
	"therisa_docks_harbor", 
	1, 
	[false, false, "therisa_docks_dock", false, false, false],
	false,
	independent, 
	[500, 500], 
	"harbor1" 
	];
};

if(isNil "tms_sl_athira_military_outpost") then {
tms_sl_athira_military_outpost = ["Athira Military Outpost",
	"athira_military_outpost_helipad", 
	1, 
	[false, false, false, "athira_military_outpost_helipad_sl_pos", "athira_military_outpost_helipad_heli_pos", false],
	false,
	independent, 
	[500, 500], 
	"helipad1" 
	];
};

if(isNil "tms_sl_limni_drop_zone") then {
tms_sl_limni_drop_zone = ["Limni Drop Zone",
	"limni_drop_zone_para", 
	1, 
	[false, false, false, false, false, "limni_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone1" 
	];
};

if(isNil "tms_sl_shalkeia_drop_zone") then {
tms_sl_shalkeia_drop_zone = ["Shalkeia Drop Zone",
	"shalkeia_drop_zone_para", 
	2, 
	[false, false, false, false, false, "shalkeia_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone2" 
	];
};

if(isNil "tms_sl_faronaki_beachhead") then {
tms_sl_faronaki_beachhead = ["Faronaki Beachhead",
	"faronaki_beachhead",
	2,
	["faronaki_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead2"
	];
};

if(isNil "tms_sl_ekali_beachhead") then {
tms_sl_ekali_beachhead = ["Ekali Beachhead",
	"ekali_beachhead",
	3,
	["ekali_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead3"
	];
};

if(isNil "tms_sl_selakano_beachhead") then {
tms_sl_selakano_beachhead = ["Selakano Beachhead",
	"selakano_beachhead",
	3,
	["selakano_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead3"
	];
};

if(isNil "tms_sl_delfinaki_beachhead") then {
tms_sl_delfinaki_beachhead = ["Delfinaki Beachhead",
	"delfinaki_beachhead",
	2,
	["delfinaki_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead2"
	];
};

if(isNil "tms_sl_ammolofi_beachhead") then {
tms_sl_ammolofi_beachhead = ["Ammolofi Beachhead",
	"ammolofi_beachhead",
	3,
	["ammolofi_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead3"
	];
};

if(isNil "tms_sl_ifestiona_drop_zone") then {
tms_sl_ifestiona_drop_zone = ["Ifestiona Drop Zone",
	"ifestiona_drop_zone_para", 
	2, 
	[false, false, false, false, false, "ifestiona_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone2" 
	];
};

if(isNil "tms_sl_frini_drop_zone") then {
tms_sl_frini_drop_zone = ["Frini Drop Zone",
	"frini_drop_zone_para", 
	1, 
	[false, false, false, false, false, "frini_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone1" 
	];
};

if(isNil "tms_sl_thronos_drop_zone") then {
tms_sl_thronos_drop_zone = ["Thronos Drop Zone",
	"thronos_drop_zone_para", 
	1, 
	[false, false, false, false, false, "thronos_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone1" 
	];
};

if(isNil "tms_sl_stadium_landing_zone") then {
tms_sl_stadium_landing_zone = ["Stadium Landing Zone",
	"athira_stadium_landing_zone_helipad", 
	3, 
	[false, false, false, "stadium_landing_zone_helipad_sl_pos", "stadium_landing_zone_helipad_heli_pos", false],
	false,
	independent, 
	[500, 500], 
	"helipad3" 
	];
};

if(isNil "tms_sl_xirolimni_landing_zone") then {
tms_sl_xirolimni_landing_zone = ["Xirolimni Landing Zone",
	"xirolimni_landing_zone_helipad", 
	2, 
	[false, false, false, "xirolimni_landing_zone_helipad_sl_pos", "xirolimni_landing_zone_helipad_heli_pos", false],
	false,
	independent, 
	[500, 500], 
	"cargoport2" 
	];
};

if(isNil "tms_sl_hill215_landing_zone") then {
tms_sl_hill215_landing_zone = ["Hill 215 Landing Zone",
	"hill215_landing_zone_helipad", 
	3, 
	[false, false, false, "hill215_landing_zone_helipad_sl_pos", "hill215_landing_zone_helipad_heli_pos", false],
	false,
	independent, 
	[500, 500], 
	"cargoport3" 
	];
};

if(isNil "tms_sl_agios_minas_drop_zone") then {
tms_sl_agios_minas_drop_zone = ["Agios Minas Drop Zone",
	"agios_minas_drop_zone_para", 
	2, 
	[false, false, false, false, false, "agios_minas_drop_zone_para"],
	false,
	independent, 
	[500, 500], 
	"dropzone2" 
	];
};

if(isNil "tms_sl_oreokastro_beachhead") then {
tms_sl_oreokastro_beachhead = ["Oreokastro Beachhead",
	"oreokastro_beachhead",
	2,
	["oreokastro_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead2"
	];
};

if(isNil "tms_sl_fotia_beachhead") then {
tms_sl_fotia_beachhead = ["Fotia Beachhead",
	"fotia_beachhead",
	2, 
	["fotia_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead2"
	];
};

if(isNil "tms_sl_agios_konstantions_beachhead") then {
tms_sl_agios_konstantions_beachhead = ["Agios Konstantinos Beachhead",
	"agios_konstantinos_beachhead",
	3,
	["agios_konstantinos_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead3"
	];
};

if(isNil "tms_sl_fournos_beachhead") then {
tms_sl_fournos_beachhead = ["Fournos Beachhead",
	"fournos_beachhead",
	1,
	["fournos_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead1"
	];
};

if(isNil "tms_sl_athanos_beachhead") then {
tms_sl_athanos_beachhead = ["Athanos Beachhead",
	"athanos_beachhead",
	2,
	["athanos_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead2"
	];
};

if(isNil "tms_sl_panochori_beachhead") then {
tms_sl_panochori_beachhead = ["Panochori Beachhead",
	"panochori_beachhead",
	3,
	["panochori_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead3"
	];
};

if(isNil "tms_sl_edessa_beachhead") then {
tms_sl_edessa_beachhead = ["Edessa Beachhead",
	"edessa_beachhead",
	3,
	["edessa_beachhead", false, false, false, false, false],
	false,
	independent,
	[500, 500],
	"beachhead3"
	];
};
