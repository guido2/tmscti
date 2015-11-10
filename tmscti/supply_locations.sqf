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

tms_supply_locations = ["tms_sl_saltlake_beachhead"]; // Variable names for the individual locations

tms_sl_saltlake_beachhead = ["Salt Lake Beachhead", // Display name of the locations
	"salt_lake_beachhead", // Name of the map marker for this location
	2, // Tier
	["salt_lake_beachhead", "salt_lake_beachhead_lc_pos", nil, "salt_lake_beachhead_sl_pos", "salt_lake_heli_pos"], // Positions for actual delivery, in order: Self delivery for amphibious vehicles, Delivery via landing craft, delivery via ship, Delivery via helicopter slingload, Self-delivery of helicopters, nil where not possible at this location
	nil, // ID of attached airstrip for airplane deliveries
	independent, // Side this location belongs to, independent means contested
	[500, 500] // Current amount of supply points for this location, for east and west, respectively
	];
