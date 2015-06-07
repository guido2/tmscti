// Vehicle Type List
tms_supply_mbt_families = [["M1 Abrams", "tms_supply_m1_types", west],
						   ["Merkava MBTs", "tms_supply_merkava_types", west],
						   ["T-72", "tms_supply_t72_types", east],
						   ["T-80", "tms_supply_t80_types", east],
						   ["T-90", "tms_supply_t90_types", east],
						   ["T-100", "tms_supply_t100_types", east]];
						   
tms_supply_fighter_families =	[["F/A-18 Hornet", "tms_supply_f18_types", west],
								["F/A-22 Raptor", "tms_supply_f22_types", west],
								["F-16 Fighting Falcon", "tms_supply_f16_types", west],
								["F-35 Lightning II", "tms_supply_f35_types", west],
								["Suchoi Su-22", "tms_supply_su22_types", east],
								["Suchoi Su-35", "tms_supply_su35_types", east],
								["Suchoi PAK FA T-50", "tms_supply_t50_types", east]];
								
tms_supply_gaplanes_families = 	[["A-10 Thunderbolt II", "tms_supply_a10_types", west],
								 ["Suchoi Su-25", "tms_supply_su25_types", east],
								 ["Suchoi Su-34", "tms_supply_su34_types", east],
								 ["AC-130 Gunship", "tms_supply_ac130gun_types", west],
								 ["YAK-130", "tms_supply_yak130_types", east]];

// Vehicle Family List
tms_supply_m1_types = [["M1A1 Abrams", "tms_supply_m1a1_objects"],
                       ["M1A2 Abrams", "tms_supply_m1a2_objects"]];

tms_supply_t72_types = [["T-72B", "tms_supply_t72b_objects"]];

tms_supply_t80_types = 	[["T-80", "tms_supply_t80_obects"],
						 ["T-80A", "tms_supply_t80a_objects"],
						 ["T-80B", "tms_supply_t80b_objects"],
						 ["T-80U", "tms_supply_t80u_objects"]];

tms_supply_t100_types = [["T-100 Black Eagle", "tms_supply_t100_objects"]];

tms_supply_f18_types = [["F/A-18 Super Hornet", "tms_supply_f18_objects"]];

tms_supply_f22_types = [["F/A-22 Raptor", "tms_supply_f22_objects"]];

tms_supply_f16_types = [["F-16 Fighting Falcon", "tms_supply_f16_objects"]];

tms_supply_f35_types = [["F-35 Lightning II", "tms_supply_f35_objects"]];

tms_supply_su22_types = [["Suchoi Su-22", "tms_supply_su22_objects"]];

tms_supply_su35_types = [["Suchoi Su-35", "tms_supply_su35_objects"]];

tms_supply_t50_types = [["Suchoi PAK FA T-50", "tms_supply_t50_objects"]];

tms_supply_a10_types = [["A-10 Thunderbolt II", "tms_supply_a10_objects"],
						["A-100 Thunderbolt II", "tms_supply_a100_objects"]];
						
tms_supply_su25_types = [["Suchoi Su-25", "tms_supply_su25_objects"]];

tms_supply_su34_types = [["Suchoi Su-34", "tms_supply_su34_objects"]];

tms_supply_ac130gun_types = [["AC-130U Spooky II", "tms_supply_ac130u_objects"]],
							[["AC-130E Pave Spectre", "tms_supply_ac130e_objects"]];
					  
tms_supply_yak130_types = 	["YAK-130", "tms_supply_yak130_objects"];

// Vehicle Variant List
tms_supply_m1a1_objects = ["tms_objects_m1a1_aim_d"];

tms_supply_t72b_objects = ["tms_objects_t72b_1984",
							"tms_objects_t72b_1985",
							"tms_objects_t72b_1989",
							"tms_objects_t72b_2012"];

tms_supply_t80_objects = ["tms_objects_t80"];

tms_supply_t80a_objects = ["tms_objects_t80a"];

tms_supply_t80b_objects = ["tms_objects_t80b",
						   "tms_objects_t80bv"];

tms_supply_t80u_objects = ["tms_objects_t80u",
						   "tms_objects_t80u45m",
						   "tms_objects_t80ue1",
						   "tms_objects_t80um"];

tms_supply_t100_objects = ["tms_objects_t100"];

tms_supply_f18_objects = ["tms_objects_fa18e",
						  "tms_objects_fa18f",
						  "tms_objects_fa18x"];

tms_supply_f22_objects = ["tms_objects_fa22"];

tms_supply_f16_objects = ["tms_objects_f16b",
						  "tms_objects_f16c"];

tms_supply_f35_objects = ["tms_objects_f35a",
						  "tms_objects_f35b"];
						  
tms_supply_su22_objects = ["tms_objects_su22"];

tms_supply_su35_objects = ["tms_objects_su35"];						  

tms_supply_t50_objects = ["tms_objects_t50"];

tms_supply_a10_objects = ["tms_objects_a10a",
						  "tms_objects_a10c"];

tms_supply_a100_objects = ["tms_objects_a100"];

tms_supply_su25_objects = ["tms_objects_su25"];

tms_supply_su34_objects = ["tms_objects_su34"];

tms_supply_ac130u_objects = ["tms_objects_ac130u"];

tms_supply_ac130e_objects = ["tms_objects_ac130e"];

tms_supply_yak130_objects = ["tms_objects_yak133ib"] 					   
  
// Vehicle Definitions
tms_objects_m1a1_aim_d = ["M1A1 Abrams AIM", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  100, // Supply points used
						  20, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_t72b_1984 =	["T-72B obr. 1984g.",
						"rhs_t72ba_tv",// Classname
						"\rhsafrf\addons\rhs_t72\rhs_t72b_;",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];

tms_objects_t72b_1985 = ["T-72B obr. 1985g.",
						"rhs_t72bb_tv",// Classname
						"\rhsafrf\addons\rhs_t72\rhs_t72b_b",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];

tms_objects_t72b_1989 = ["T-72B obr. 1989g.",
						"rhs_t72bc_tv",// Classname
						"\rhsafrf\addons\rhs_t72\rhs_t72b_c",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];							

tms_objects_t72b_2012 = ["T-72B3 obr. 2012g.",
						"rhs_t72bd_tv",// Classname
						"\rhsafrf\addons\rhs_t72\rhs_t72b3test",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];								

tms_objects_t80 = 		["T-80",
						"rhs_t80",// Classname
						"\rhsafrf\addons\rhs_t80\T80.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80a = 		["T-80A",
						"rhs_t80a",// Classname
						"\rhsafrf\addons\rhs_t80\T80A.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80b = 		["T-80B",
						"rhs_t80b",// Classname
						"\rhsafrf\addons\rhs_t80\T80B1.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80bv = 	["T-80BV",
						"rhs_t80bv",// Classname
						"\rhsafrf\addons\rhs_t80\T80BV.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80u = 		["T-80U",
						"rhs_t80u",// Classname
						"\rhsafrf\addons\rhs_t80u\rhs_t80u.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80u45m = 	["T-80U 45M",
						"rhs_t80u45m",// Classname
						"\rhsafrf\addons\rhs_t80u\rhs_t80um45.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80ue1 = 	["T-80UE-1",
						"rhs_t80ue1",// Classname
						"\rhsafrf\addons\rhs_t80u\rhs_t80ue1.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80um = 	["T-80UM",
						"rhs_t80um",// Classname
						"\rhsafrf\addons\rhs_t80u\rhs_t80um.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t100 = 		["T-100 Black Eagle",
						"O_MBT_02_cannon_F",// Classname
						"\A3\armor_f_gamma\MBT_02\MBT_02_cannon_F",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_fa18e = 	["F/A-18E Super Hornet",
						"JS_JC_FA18E",// Classname
						"\js_jc_fa18\JC_JS_FZ_FA18E.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];

tms_objects_fa18f = 	["F/A-18F Super Hornet",
						"JS_JC_FA18F",// Classname
						"\js_jc_fa18\JC_JS_FZ_FA18F.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_fa18x = 	["F/A-18X Black Wasp",
						"JS_S_FA18X",// Classname
						"\js_s_fa18x\JS_S_FA18X_BLACK_WASP.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_fa22 = 		["F/A-22 Raptor",
						"usaf_f22",// Classname
						"\usaf_f22\usaf_f22.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_f16b = 		["F-16B Fighting Falcon ",
						"USAF_F16",// Classname
						"model = "\USAF_F16\USAF_F16_falcon.p3d";",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_f16c = 		["F-16C Fighting Falcon",
						"FIR_F16C",// Classname
						"\FIR_F16\FIR_F16C",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_f35a = 		["F-35A Lightning II",
						"USAF_F35A_Base",// Classname
						"\USAF_F35A\USAF_F35A.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_f35b = 		["F-35B Lightning II",
						"CHO_F35B_CAS",// Classname
						"f35b\models\f35b.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t50 = 		["Suchoi PAK FA T-50",
						"O_PAKFA_F",// Classname
						"A3_PAK-FA_F\models\PAKFA.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_a10a = 		["A-10A Thunderbolt II",
						"RHS_A10",// Classname
						"\rhsusf\addons\rhsusf_a2port_air\a10\A10.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_a10c = 		["A-10C Thunderbolt II",
						"USAF_A10",// Classname
						"\usaf_a10\usaf_A10.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_a100 = 		["A-100 Thunderbolt II",
						"B_Plane_CAS_01_F",// Classname
						"\A3\Air_F_EPC\Plane_CAS_01\Plane_cas_01_F.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_su25 = 		["Suchoi Su-25SM",
						"RHS_Su25SM_vvsc",// Classname
						"\rhsafrf\addons\rhs_a2port_air\su25\su25",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_su34 = 		["Suchoi Su-34",
						"sab_SU34_O_CAP_CRU_AF",// Classname
						"\sab_SU34\SU34.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
					
tms_objects_ac130u = 	["AC-130U Spooky II",
						"USAF_AC130U",// Classname
						"\USAF_AC130U\USAF_AC130U.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_ac130e = 	["AC-130E Pave Spectre",
						"LDL_C130J",// Classname
						"\USAF_AC130U\USAF_AC130U.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_su22 = 		["Suchoi Su-22",
						"TCP_Su22",// Classname
						"\TCP_Su22\TCP_Su22",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_su35 = 		["Suchoi Su-35E",
						"JS_JC_SU35",// Classname
						"TCP_Su22\TCP_Su22",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_yak133ib = 	["YAK-133IB",
						"O_Plane_CAS_02_F",// Classname
						"\A3\Air_F_EPC\Plane_CAS_02\Plane_cas_02_F.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];