//Machine gun type list
tms_supply_machinegun_families = [["LWMMG", "tms_supply_lwmmg_types", west],
								  ["FN MAG M240", "tms_supply_m240_types", west],
								  ["M249 LMG", "tms_supply_m249_types", west],
								  ["M60", "tms_supply_m60_types", west],
								  ["KAC Stoner 99 LMG", "tms_supply_stonerlmg_types", west],
								  ["PKM", "tms_supply_pkm_types", east],
								  ["PKP", "tms_supply_pkp_types", east],
								  ["RPK", "tms_supply_rpk_types", east]
								 ];

//Machine gun family list
tms_supply_lwmmg_types = [["LWMMG", "tms_supply_lwmmg_objects"]];

tms_supply_m240_types = [["FN MAG M240B", "tms_supply_m240b_objects"],
						 ["FN MAG M240G", "tms_supply_m240g_objects"],
						 ["FN MAG M240L", "tms_supply_m240l_objects"]
						];

tms_supply_m249_types = [["M249 LMG", "tms_supply_m249_objects"],
						 ["M249 E2 LMG", "tms_supply_m249e2_objects"],
						 ["M249 PIP LMG", "tms_supply_m249pip_objects"],
						 ["Minimi MG", "tms_supply_minimi_objects"],
						 ["MK48 MOD 0", "tms_supply_mk48mod0_objects"]
						];

tms_supply_m60_types = [["M60E4", "tms_supply_m60e4_objects"]];

tms_supply_stonerlmg_types = [["KAC Stoner 99 LMG", "tms_supply_stonerlmg_objects"]];

tms_supply_pkm_types = [["PKM", "tms_supply_pkm_objects"],
						["PKM N", "tms_supply_pkmn_objects"]
					   ];

tms_supply_pkp_types = [["PKP", "tms_supply_pkp_objects"]];

tms_supply_rpk_types = [["RPK", "tms_supply_rpk_objects"],
						["RPK N", "tms_supply_rpkn_objects"],
						["RPK-74", "tms_supply_rpk74_objects"],
						["RPK-74 M", "tms_supply_rpk74m_objects"],
						["RPK-74 N", "tms_supply_rpk74n_objects"]
						];

//Machine gun variant list
tms_supply_lwmmg_objects = ["tms_objects_lwmmgmtp"];

tms_supply_m240b_objects = ["tms_objects_m240b",
							"tms_objects_m240bcap"],
							
tms_supply_m240g_objects = ["tms_objects_m240g",
							"tms_objects_m240gcap"];
							

tms_supply_m240l_objects = ["tms_objects_m240l"];

tms_supply_m249_objects = ["tms_objects_m249squantoon",
						   "tms_objects_m249saw",
						   "tms_objects_m249para"];

tms_supply_m249e2_objects = ["tms_objects_m249e2",
							 "tms_objects_m249e2ris137",
							 "tms_objects_m249e2para137"];
 
tms_supply_m249pip_objects = ["tms_objects_m249piplongpara",
							  "tms_objects_m249piplongvfg",
							  "tms_objects_m249pipris183",
							  "tms_objects_m249piprispipstock",
							  "tms_objects_m249pipshort",
							  "tms_objects_m249pipshortpara",
							  "tms_objects_m249pipshortvfg",
							  "tms_objects_m249pipvfgpipstock"];

tms_supply_minimi_objects = ["tms_objects_minimi183",
							 "tms_objects_minimirissolidstock",
							 "tms_objects_minimipara"];

tms_supply_mk48mod0_objects = ["tms_objects_mk48mod0black",
							   "tms_objects_mk48mod0sand",
							   "tms_objects_mk48mod0desert",
							   "tms_objects_mk48mod0woodland"];

tms_supply_m60e4_objects = ["tms_objects_m60e4railed"];

tms_supply_pkm_objects = ["tms_objects_pkmv1",
						  "tms_objects_pkmv2",
						  "tms_objects_pkmv3",
						  "tms_objects_pkmmetal",
						  "tms_objects_pkmtactical"];

tms_supply_pkmn_objects = ["tms_objects_pkmn",
						   "tms_objects_pkmnmetal"];
  
tms_supply_pkp_objects = ["tms_objects_pkpv1",
						  "tms_objects_pkpv2",
						  "tms_objects_pkpv3"];

tms_supply_stonerlmg_objects = ["tms_objects_stonerlmg"];

tms_supply_rpk_objects = ["tms_objects_rpk"];

tms_supply_rpkn_objects = ["tms_objects_rpkn"];

tms_supply_rpk74_objects = ["tms_objects_rpk74v1",
							"tms_objects_rpk74v2",
							"tms_objects_rpk74drum"];
							

tms_supply_rpk74m_objects = ["tms_objects_rpk74m"];

tms_supply_rpk74n_objects = ["tms_objects_rpk74n",
							 "tms_objects_rpk74nmetal"];

//Machine gun definitions

tms_objects_lwmmgmtp = ["LWMMG (MTP)", // Name of the vehicle
						"mmg_02_camo_f",// Classname
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",// P3D model
						0.1,//Scale factor
						[1.30, 0.22, 0.10],//transformfactor
						100, // Supply points used
						0, // Size of the vehicle
						"gear", // gear or vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];

tms_objects_m240b = ["M240B",
						"CUP_lmg_M240",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m240bcap = ["M240B CAP",
						"rhs_weap_m240B_CAP",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m240g = ["M240G",
						"VTN_M240G",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m240gcap = ["M240G CAP",
						"rhs_weap_m240G",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];						
tms_objects_m240l = ["M240L",
						"ej_m240l",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249squantoon = ["M249 Squantoon Special",
						"CUP_lmg_m249_SQuantoon",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249saw = ["M249 SAW",
						"VTN_M249_SAW",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249para = ["M249 PARA",
						"VTN_M249_PARA",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249e2 = ["M249 E2",
						"CUP_lmg_M249_E2",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249e2ris137 = ["M249 E2 RIS/13.7 in.",
						"CUP_lmg_m249_pip2",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249e2para137 = ["M249 E2 PARA/13.7 in.",
						"CUP_lmg_m249_para",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249piplongpara = ["M249 PIP Long/PARA",
						"rhs_weap_m249_pip_L_para",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249piplongvfg = ["M249 PIP Long/VFG",
						"rhs_weap_m249_pip_L_vfg",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249pipris183 = ["M249 PIP RIS/18.3 in.",
						"CUP_lmg_m249_pip1",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249piprispipstock = ["M249 PIP RIS/PIP Stock",
						"CUP_lmg_m249_pip3",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249pipshort = ["M249 PIP Short",
						"rhs_weap_m249_pip_S",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249pipshortpara = ["M249 PIP Short/PARA",
						"rhs_weap_m249_pip_S_para",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249pipshortvfg = ["M249 PIP Short/VFG",
						"rhs_weap_m249_pip_S_vfg",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m249pipvfgpipstock = ["M249 PIP VFG/PIP Stock",
						"rhs_weap_m249_pip_S_vfg",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_minimi183 = ["Minimi 18.3 in.",
						"CUP_lmg_minimi",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_minimirissolidstock = ["Minimi RIS/Solid Stock",
						"CUP_lmg_minimi_railed",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_minimipara = ["Minimi PARA",
						"CUP_lmg_minimipara",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, -.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_mk48mod0black = ["MK48 MOD 0 (Black)",
						"ej_mk48b",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_mk48mod0sand = ["MK48 MOD 0 (Sand)",
						"ej_mk48d",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_mk48mod0desert = ["MK48 MOD 0 (Desert)",
						"CUP_lmg_Mk48_des",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_mk48mod0woodland = ["MK48 MOD 0 (Woodland)",
						"CUP_lmg_Mk48_wdl",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_m60e4railed = ["M60E4 Railed",
						"CUP_lmg_M60E4",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmv1 = ["PKM v1",
						"CUP_lmg_PKM",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmv2 = ["PKM v2",
						"VTN_PKM",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmv3 = ["PKM v3",
						"VTN_PKM_P",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmmetal = ["PKM Metal",
						"rhs_weap_pkm",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmtactical = ["PKM Tactical",
						"ej_pkmtac",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmn = ["PKM N",
						"VTN_PKMN",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkmnmetal = ["PKM N Metal",
						"VTN_PKMN_P",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkpv1 = ["PKP v1",
						"VTN_PKP",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkpv2 = ["PKP v2",
						"CUP_lmg_Pecheneg",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_pkpv3 = ["PKP v3",
						"rhs_weap_pkp",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_stonerlmg = ["KAC Stoner 99 LMG",
						"asdg_LMG_Mk200_F",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpk = ["RPK",
						"VTN_RPK",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpkn = ["RPK N",
						"VTN_RPKN",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpk74v1 = ["RPK-74 v1",
						"CUP_arifle_RPK74_45",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpk74v2 = ["RPK-74 v2",
						"VTN_RPK74_84",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpk74drum = ["RPK-74 Drum",
						"CUP_arifle_RPK74",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];

tms_objects_rpk74m = ["RPK-74M",
						"CUP_arifle_RPK74M",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpk74n = ["RPK-74N",
						"VTN_RPK74N",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];
tms_objects_rpk74nmetal = ["RPK-74N Metal",
						"VTN_RPK74N_84",
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",
						0.1,
						[1.30, 0.22, 0.10],
						100, 
						0,
						"gear",
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"],
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"],
						nil //
						];