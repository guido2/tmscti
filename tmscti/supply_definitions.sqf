// Vehicle Type List
tms_supply_mbt_families = [["M1 Abrams", "tms_supply_m1_types", west],
						   ["Merkava MBTs", "tms_supply_merkava_types", west],
						   ["T-72", "tms_supply_t72_types", east],
						   ["T-80", "tms_supply_t80_types", east],
						   ["T-90", "tms_supply_t90_types", east],
						   ["T-100", "tms_supply_t100_types", east]];

// Vehicle Family List
tms_supply_m1_types = [["M1A1 Abrams", "tms_supply_m1a1_objects"],
                       ["M1A2 Abrams", "tms_supply_m1a2_objects"]];

tms_supply_t72_types = [["T-72B", "tms_supply_t72b_objects"]];

tms_supply_t80_types = 	[["T-80", "tms_supply_t80_obects"],
						 ["T-80A", "tms_supply_t80a_objects"],
						 ["T-80B", "tms_supply_t80b_objects"],
						 ["T-80U", "tms_supply_t80u_objects"]];

tms_supply_t100_types = [["T-100 Black Eagle", "tms_supply_t100_objects"]];	

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
  
// Vehicle Definitions
tms_objects_m1a1_aim_d = ["M1A1 Abrams AIM", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
//						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  100, // Supply points used
						  20, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_t72b_1984 =	["T-72B obr. 1984g.",
						"rhs_t72ba_tv",// Classname
//						"\rhsafrf\addons\rhs_t72\rhs_t72b_;",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];

tms_objects_t72b_1985 = ["T-72B obr. 1985g.",
						"rhs_t72bb_tv",// Classname
//						"\rhsafrf\addons\rhs_t72\rhs_t72b_b",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];

tms_objects_t72b_1989 = ["T-72B obr. 1989g.",
						"rhs_t72bc_tv",// Classname
//						"\rhsafrf\addons\rhs_t72\rhs_t72b_c",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];							

tms_objects_t72b_2012 = ["T-72B3 obr. 2012g.",
						"rhs_t72bd_tv",// Classname
//						"\rhsafrf\addons\rhs_t72\rhs_t72b3test",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];								

tms_objects_t80 = 		["T-80",
						"rhs_t80",// Classname
//						"\rhsafrf\addons\rhs_t80\T80.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80a = 		["T-80A",
						"rhs_t80a",// Classname
//						"\rhsafrf\addons\rhs_t80\T80A.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80b = 		["T-80B",
						"rhs_t80b",// Classname
//						"\rhsafrf\addons\rhs_t80\T80B1.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80bv = 	["T-80BV",
						"rhs_t80bv",// Classname
//						"\rhsafrf\addons\rhs_t80\T80BV.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80u = 		["T-80U",
						"rhs_t80u",// Classname
//						"\rhsafrf\addons\rhs_t80u\rhs_t80u.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80u45m = 	["T-80U 45M",
						"rhs_t80u45m",// Classname
//						"\rhsafrf\addons\rhs_t80u\rhs_t80um45.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80ue1 = 	["T-80UE-1",
						"rhs_t80ue1",// Classname
//						"\rhsafrf\addons\rhs_t80u\rhs_t80ue1.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t80um = 	["T-80UM",
						"rhs_t80um",// Classname
//						"\rhsafrf\addons\rhs_t80u\rhs_t80um.p3d",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
						
tms_objects_t100 = 		["T-100 Black Eagle",
						"O_MBT_02_cannon_F",// Classname
//						"\A3\armor_f_gamma\MBT_02\MBT_02_cannon_F",// P3D model
						100, // Supply points used
						20, // Size of the vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
				
				

