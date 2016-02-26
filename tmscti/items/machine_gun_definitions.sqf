//Machine gun type list
tms_supply_machinegun_families = [["LWMMG", "tms_supply_lwmmg_types", west]];

//Machine gun family list
tms_supply_lwmmg_types = [["LWMMG", "tms_supply_lwmmg_objects"]];

//Machine gun variant list
tms_supply_lwmmg_objects = ["tms_objects_lwmmgmtp"];

//Machine gun definitions

tms_objects_lwmmgmtp = ["LWMMG (MTP)", // Name of the vehicle
						"mmg_02_camo_f",// Classname
						"\rhsusf\addons\rhsusf_weapons\M4\m4_ris.p3d",// P3D model
						0.2,//Scale factor
						[1.15, 0.25, -0.04],//transformfactor
						100, // Supply points used
						0, // Size of the vehicle
						"gear", // gear or vehicle
						["heli1", "heli2", "heli3", "beachhead", "cargoport1", "cargoport2", "cargoport3", "airfield1", "airfield2", "airport"], // Supply locations where this vehicle can be ordered
						["landing_craft", "c17_vehicle_cargo", "chinook_as_slingload"], // Transport craft that are capable of delivering this vehicle
						nil // Initialization function to run on this vehicle after it is spawned
						];
