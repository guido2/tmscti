disableSerialization;

waitUntil {not isNull (findDisplay 5000)};

// Hide all all family select buttons by default
{
	ctrlShow [_x, false];
} forEach [tms_idc_fob_installations + tms_idc_all_vehicles + tms_idc_all_gear + tms_idc_supply];

_display = findDisplay 5000;
_craftlist = _display displayCtrl 2100;

_side = tms_current_supply_location select tms_sl_cols_side;
_delivery_positions = tms_current_supply_location select tms_sl_cols_delivery_positions;
_airstrip_id = tms_current_supply_location select tms_sl_cols_airstrip_id;
_tier = tms_current_supply_location select tms_sl_cols_tier;

// Prepare the list of possible delivery methods
_current_index = 0;
if (_side == west) then {
	// Note: == operator does not work on booleans for some retarded reason, so we use isEqualTo instead
	if (not (_delivery_positions select 3 isEqualTo false) and _tier >= 1) then {
		_craftlist lbAdd ("UH-1Y Venom (slingload)");
		_craftlist lbSetData [_current_index, "UH-1Y Venom"];
		_current_index = _current_index + 1;
		};

	if (not (_delivery_positions select 3 isEqualTo false) and _tier >= 2) then {
		_craftlist lbAdd ("CH-47 Chinook (slingload)");
		_craftlist lbSetData [_current_index, "CH-47 Chinook"];
		_current_index = _current_index + 1;
		};

	if (not (_delivery_positions select 3 isEqualTo false) and _tier >= 3) then {
		_craftlist lbAdd ("CH-53E Super Stallion (slingload)");
		_craftlist lbSetData [_current_index, "CH-53E Super Stallion"];
		_current_index = _current_index + 1;
		};

	if (not (_airstrip_id isEqualTo false) and _tier >= 2) then {
		_craftlist lbAdd ("C-17 Globemaster III");
		_craftlist lbSetData [_current_index, "C-17 Globemaster III"];
		_current_index = _current_index + 1;
		};

	if (not (_delivery_positions select 2 isEqualTo false) and _tier >= 3) then {
		_craftlist lbAdd ("D-41 Transport Ship");
		_craftlist lbSetData [_current_index, "D-41 Transport Ship"];
		_current_index = _current_index + 1;
		};
	}
else { // if side east
	if (not (_delivery_positions select 3 isEqualTo false) and _tier >= 1) then {
		_craftlist lbAdd ("Ka-60 Kasatka");
		_craftlist lbSetData [_current_index, "Ka-60 Kasatka"];
		_current_index = _current_index + 1;
		};

	if (not (_delivery_positions select 3 isEqualTo false) and _tier >= 2) then {
		_craftlist lbAdd ("Mil Mi-8MT");
		_craftlist lbSetData [_current_index, "Mil Mi-8MT"];
		_current_index = _current_index + 1;
		};

	if (not (_delivery_positions select 3 isEqualTo false) and _tier >= 3) then {
		_craftlist lbAdd ("Mil Mi-6");
		_craftlist lbSetData [_current_index, "Mil Mi-6"];
		_current_index = _current_index + 1;
		};

	if (not (_airstrip_id isEqualTo false) and _tier >= 3) then {
		_craftlist lbAdd ("AN-22 Antei");
		_craftlist lbSetData [_current_index, "AN-22 Antei"];
		_current_index = _current_index + 1;
		};

	if (not (_delivery_positions select 2 isEqualTo false) and _tier >= 3) then {
		_craftlist lbAdd ("D-41 Transport Ship");
		_craftlist lbSetData [_current_index, "D-41 Transport Ship"];
		_current_index = _current_index + 1;
		};
};

if (not (_airstrip_id isEqualTo false) and _tier >= 2) then {
	_craftlist lbAdd ("Self Delivery (Airplane)");
	_craftlist lbSetData [_current_index, "Self Delivery (Airplane)"];
	_current_index = _current_index + 1;
	};

if (not (_delivery_positions select 4 isEqualTo false)) then {
	_craftlist lbAdd ("Self Delivery (Helicopter)");
	_craftlist lbSetData [_current_index, "Self Delivery (Helicopter)"];
	_current_index = _current_index + 1;
	};

execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
