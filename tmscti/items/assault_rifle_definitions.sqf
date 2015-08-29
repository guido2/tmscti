//Assault rifle type list
tms_supply_assaultrifle_families	=	[["M4", "tms_supply_m4_types", west],
										 ["M16", "tms_supply_m16_types", west]];
									
//Assault rifle family list
tms_supply_m4_types					=	[["M4", "tms_supply_m4_objects"],
										 ["M4A1", "tms_supply_m4a1_objects"],
										 ["M4A1 Block II", "tms_supply_m4a1blockii_objects"],
										 ["M4A3", "tms_supply_m4a3_objects"]];
									   
tms_supply_m16_types				=	[["M14A2", "tms_supply_m16a2_objects"],
										 ["M16A4", "tms_supply_m16a4_objects"]];
										 
//Assault rifle variant list
tms_supply_m4_objects				=	["tms_objects_m4",
										 "tms_objects_m4afg",
										 "tms_objects_m4carryhandle",
										 "tms_objects_m4carryhandlepmag",
										 "tms_objects_m4grippod",
										 "tms_objects_m4m203",
										 "tms_objects_m4m320",
										 "tms_objects_m4custom",
										 "tms_objects_m4sf60",
										 "tms_objects_m4customm203"];
										 
tms_supply_m4a1_objects				=	["tms_objects_m4a1foregrip"];
										 
tms_supply_m16a2_objects			=	["tms_objects_m16a2",
										 "tms_objects_m16A2m203"];
										 
//Assault rifle definitions

tms_objects_m4 = 		 ["M4", // Name of the vehicle
						  "rhs_weap_m4",// Classname
						  "\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",// P3D model
						  0.2,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  "item",//item or vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4afg = 	 ["M4 AFG", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];						  

tms_objects_m4carryhandle = ["M4 Carryhandle", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4carryhandlepmag = ["M4 PMAG Carryhandle", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4grippod =  ["M4 Grippod", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4m203 = 	 ["M4 M203 GL", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4m320 = 	 ["M4 M320 GL", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4custom = 	 ["M4 Custom", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];							  
										 
tms_objects_m4sf60 = 	 ["M4 SF60", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m4customm203 = ["M4 Custom M203 GL", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m16a2 = 	 ["M16A2", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_objects_m16A2m203 =  ["M16A2 M203 GL", // Name of the vehicle
						  "rhsusf_m1a1aimd_usarmy",// Classname
						  "\rhsusf\addons\rhsusf_m1a1\m1a1aim_d",// P3D model
						  0.028,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];
						  
tms_objects_m4a1foregrip =  ["M4A1 with Foregrip", // Name of the vehicle
						  "VTN_C_M4A1",// Classname
						  "\vtn_wpnw_m4_md\vtn_m4a1_c",// P3D model
						  0.058,//Scale factor
						  [1.15, 0.25, -0.04],//transformfactor
						  100, // Supply points used
						  0, // Size of the vehicle
						  "item",//item or vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];