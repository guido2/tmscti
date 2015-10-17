tms_supply_locations = ["tms_sl_saltlake_beachhead"]; // Variable names for the individual locations

tms_sl_saltlake_beachhead = ["Salt Lake Beachhead", // Display name of the locations
	"salt_lake_beachhead", // Name of the map marker for this location
	2, // Tier
	["salt_lake_beachhead", "salt_lake_beachhead_lc_pos", nil, "salt_lake_beachhead_sl_pos", "salt_lake_heli_pos"], // Positions for actual delivery, in order: Self delivery for amphibious vehicles, Delivery via landing craft, delivery via ship, Delivery via helicopter slingload, Self-delivery of helicopters, nil where not possible at this location
	nil, // ID of attached airstrip for airplane deliveries
	nil, // Side this location belongs to, nil means contested
	[500, 500] // Current amount of supply points for this location, for east and west, respectively
	];
