_index = lbCurSel 1502;
_supply_item_data_string = lbData [1502, _index];
_supply_item_data = call compile _supply_item_data_string;

_weapon = _supply_item_data select 1;

_wpnrails = [_weapon, 301] call CBA_fnc_compatibleItems;
_wpnscopes = [_weapon, 201] call CBA_fnc_compatibleItems;
_wpnsuppressors = [_weapon, 101] call CBA_fnc_compatibleItems;
_wpnbipods = [_weapon, 302] call CBA_fnc_compatibleItems;
_magazines = getArray (configFile / "CfgWeapons" / _weapon / "magazines");

_number_of_optics = count _wpnscopes;
_counter = 0;
_selected_index = 0;
_display = findDisplay 5000;
_scopelist = _display displayCtrl 1503;
_scans = 0;
_selected_optic = 0;
_number_of_optics_in_variable = count tms_supply_optics_objects;

lbClear _scopelist;

_scopelist lbAdd "Iron sights (None)";

while {_scans < _number_of_optics} do {
	if (_number_of_optics_in_variable == _scans) then {
		_scans = _number_of_optics; //Stops the procedure if no more attachments could be found in the individual attachment list.
		} else {

			while { _counter < _number_of_optics} do {
		
			_scanned_index = (tms_supply_optics_objects select _selected_optic) select 1;
			if (_scanned_index == _wpnscopes select _selected_index) then {
		
				_item = tms_supply_optics_objects select _selected_optic;
				_item_string = str _item;
								
				_entry = _scopelist lbAdd (_item select 0);
				_scopelist lbSetData [_entry, _item_string];	
				_counter = _number_of_optics; //Stops the search for this specific attachment, because it has already been found.
			};
			_counter = _counter + 1;
			_selected_index = _selected_index + 1;
		};
	
		_scans = _scans + 1;
		_selected_optic = _selected_optic + 1;
		_counter = 0;
		_selected_index = 0;  
};
};

//Rail Objects

_number_of_robjects = count _wpnrails;
_counter = 0;
_selected_index = 0;
_display = findDisplay 5000;
_robjectslist = _display displayCtrl 1504;
_scans = 0;
_selected_robject = 0;
_number_of_robjects_in_variable = count tms_supply_railobject_objects;

lbClear _robjectslist;

_robjectslist lbAdd "No Rail Object";

while {_scans < _number_of_robjects} do {
	if (_number_of_robjects_in_variable == _scans) then {
		_scans = _number_of_robjects; //Stops the procedure if no more attachments could be found in the individual attachment list.
		} else {

			while { _counter < _number_of_robjects} do {
		
			_scanned_index = (tms_supply_railobject_objects select _selected_robject) select 1;
			if (_scanned_index == _wpnrails select _selected_index) then {
		
				_item = tms_supply_railobject_objects select _selected_robject;
				_item_string = str _item;
								
				_entry = _robjectslist lbAdd (_item select 0);
				_robjectslist lbSetData [_entry, _item_string];	
				_counter = _number_of_robjects; //Stops the search for this specific attachment, because it has already been found.
			};
			_counter = _counter + 1;
			_selected_index = _selected_index + 1;
		};
	
		_scans = _scans + 1;
		_selected_robject = _selected_robject + 1;
		_counter = 0;
		_selected_index = 0;  
};
};

//Bipods

_number_of_bipods = count _wpnbipods;
_counter = 0;
_selected_index = 0;
_display = findDisplay 5000;
_bipodlist = _display displayCtrl 1505;
_scans = 0;
_selected_bipod = 0;
_number_of_bipods_in_variable = count tms_supply_bipod_objects;

lbClear _bipodlist;

_bipodlist lbAdd "No Bipod";

while {_scans < _number_of_bipods} do {
	if (_number_of_bipods_in_variable == _scans) then {
		_scans = _number_of_bipods; //Stops the procedure if no more attachments could be found in the individual attachment list.
		} else {

			while { _counter < _number_of_bipods} do {
		
			_scanned_index = (tms_supply_bipod_objects select _selected_bipod) select 1;
			if (_scanned_index == _wpnbipods select _selected_index) then {
		
				_item = tms_supply_bipod_objects select _selected_bipod;
				_item_string = str _item;
								
				_entry = _bipodlist lbAdd (_item select 0);
				_bipodlist lbSetData [_entry, _item_string];	
				_counter = _number_of_bipods; //Stops the search for this specific attachment, because it has already been found.
			};
			_counter = _counter + 1;
			_selected_index = _selected_index + 1;
		};
	
		_scans = _scans + 1;
		_selected_bipod = _selected_bipod + 1;
		_counter = 0;
		_selected_index = 0;  
};
};								  

//Silencer

_number_of_silencers = count _wpnsuppressors;
_counter = 0;
_selected_index = 0;
_display = findDisplay 5000;
_silencerlist = _display displayCtrl 1506;
_scans = 0;
_selected_silencer = 0;
_number_of_silencers_in_variable = count tms_supply_silencer_objects;

lbClear _silencerlist;

_silencerlist lbAdd "No Silencer";

while {_scans < _number_of_silencers} do {
	if (_number_of_silencers_in_variable == _scans) then {
		_scans = _number_of_silencers; //Stops the procedure if no more attachments could be found in the individual attachment list.
		} else {

			while { _counter < _number_of_silencers} do {
		
			_scanned_index = (tms_supply_silencer_objects select _selected_silencer) select 1;
					
			if (_scanned_index == _wpnsuppressors select _selected_index) then {
		
				hint "das if ding funzt"; //NEIN FUNZT IN KEINEM FALL, DIE IF SACHE WIRD NIEMALS WAHR
				_item = tms_supply_silencer_objects select _selected_silencer;
				_item_string = str _item;
												
				_entry = _silencerlist lbAdd (_item select 0);
				_silencerlist lbSetData [_entry, _item_string];	
				_counter = _number_of_silencers; //Stops the search for this specific attachment, because it has already been found.
			};
			_counter = _counter + 1;
			_selected_index = _selected_index + 1;
		};
	
		_scans = _scans + 1;
		_selected_silencer = _selected_silencer + 1;
		_counter = 0;
		_selected_index = 0;  
};
};	


//Magazines

_number_of_magazines = count _magazines;
_counter = 0;
_selected_index = 0;
_display = findDisplay 5000;
_magazinelist = _display displayCtrl 1508;
_scans = 0;
_selected_magazine = 0;
_number_of_magazines_in_variable = count tms_supply_silencer_objects;

lbClear _magazinelist;

_magazinelist lbAdd "No Ammo";

while {_scans < _number_of_magazines} do {
	if (_number_of_magazines_in_variable == _scans) then {
		_scans = _number_of_magazines; //Stops the procedure if no more attachments could be found in the individual attachment list.
		} else {

			while { _counter < _number_of_magazines} do {
		
			_scanned_index = (tms_supply_magazine_objects select _selected_magazine) select 1;
			if (_scanned_index == _magazines select _selected_index) then {
		
				_item = tms_supply_magazine_objects select _selected_magazine;
				_item_string = str _item;
								
				_entry = _magazinelist lbAdd (_item select 0);
				_magazinelist lbSetData [_entry, _item_string];	
				_counter = _number_of_magazines; //Stops the search for this specific attachment, because it has already been found.
			};
			_counter = _counter + 1;
			_selected_index = _selected_index + 1;
		};
	
		_scans = _scans + 1;
		_selected_magazine = _selected_magazine + 1;
		_counter = 0;
		_selected_index = 0;  
};
};

