tms_supply_mbt_families = [["M1 Abrams", "tms_supply_m1_types", west],
						   ["Merkava MBTs", "tms_supply_merkava_types", west],
						   ["T72 tanks", "tms_supply_t72_types", east]];

tms_supply_m1_types = [["M1A1 Abrams", "tms_supply_m1a1_objects"],
                       ["M1A2 Abrams", "tms_supply_m1a2_objects"]];

tms_objects_m1a1_aim_d = ["M1A1 Abrams AIM (Desert)", // Name of the vehicle
						  100, // Supply points used
						  20, // Size of the vehicle
						  ["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						  ["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						  nil // Initialization function to run on this vehicle after it is spawned
						  ];

tms_supply_m1a1_objects = ["tms_objects_m1a1_aim_d"];
