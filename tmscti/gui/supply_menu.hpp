class hqsupply
	{
	idd = 5000;
	movingenable = 0;
	onLoad = execVM "tmscti\gui\initialize_supply_dialog.sqf";
	enableSimulation = 1;

class ControlsBackground
{

	//ONLY FOR VIEWPORT ADJUSTMENTS! NEEDS TO BE REMOVED AT LAST! >>> NOT REALLY NEEDED ANYMORE DUE TO THE GRID BG IN VIEWPORT. WILL BE REMOVED NEXT UPDATE! <<<
//	class ruler: RscText
//	{
//	idc = 1009;
//	x = 0.660417 * safezoneW + safezoneX;
//	y = 0.445021 * safezoneH + safezoneY;
//	w = 0.309375 * safezoneW;
//	h = 0.0219914 * safezoneH;
//	colorBackground[] = {1,1,1,1};
//	colorActive[] = {1,1,1,1};
//};
	class supplybckg: RscText
	{
	idc = 1000;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0161887 * safezoneH + safezoneY;
	w = 0.985417 * safezoneW;
	h = 0.901648 * safezoneH;
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0.75};
	colorActive[] = {0,0,0,0.75};
	sizeEx = 1 * GUI_GRID_H;
	};
	class supplyheader: RscText
	{
	idc = 1001;
	text = "Supplymenu"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0161887 * safezoneH + safezoneY;
	w = 0.985417 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.556863,0.556863,0.219608,1};
	};
	class supplysubheader: RscText
	{
	idc = 1002;
	x = 0.00729201 * safezoneW + safezoneX;
	y = 0.0491758 * safezoneH + safezoneY;
	w = 0.985417 * safezoneW;
	h = 0.109957 * safezoneH;
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0.5};
	colorActive[] = {0,0,0,0.5};
	sizeEx = 1 * GUI_GRID_H;
	};
	class supplyviewport: RscText
	{
	idc = 1003;
	x = 0.648958 * safezoneW + safezoneX;
	y = 0.0601715 * safezoneH + safezoneY;
	w = 0.338021 * safezoneW;
	h = 0.417837 * safezoneH;
	type = 0;
	style = 144; //1 2 3...176
	tileH = 10; //Tile Picture height (style = 144)
	tileW = 10; //Tile Picture width (style = 144)
	text = "tmscti\images\tms_supportbck.paa";
	colorText[] = {0.5,0.5,0.5,0.75};
	colorBackground[] = {0.3,0.3,0.3,1};
//	colorActive[] = {0,0,0,1};
	tooltip = "Supply preview"; //--- ToDo: Localize;
	sizeEx = 1 * GUI_GRID_H;
	};
	class cargoheader: RscText
	{
	idc = 1005;
	text = "Cargolist supply points"; //--- ToDo: Localize;
	x = 0.648958 * safezoneW + safezoneX;
	y = 0.521991 * safezoneH + safezoneY;
	w = 0.338021 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0,0,0,1};
	tooltip = "This is your selected cargo"; //--- ToDo: Localize;
	};
	class costbar: RscText
	{
	idc = 1004;
	text = "Supplypoints:"; //--- ToDo: Localize;
	x = 0.648958 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.338021 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.556863,0.556863,0.219608,1};
	};
	class supplytransport: RscText
	{
	idc = 1006;
	text = "Transport craft"; //--- ToDo: Localize;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.170129 * safezoneH + safezoneY;
	w = 0.252083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.556863,0.556863,0.219608,1};
	tooltip = "Select the type of craft your cargo is transported with"; //--- ToDo: Localize;
	};
	class supplyplace: RscText
	{
	idc = 1007;
	text = "Cargospace left:"; //--- ToDo: Localize;
	x = 0.648958 * safezoneW + safezoneX;
	y = 0.763897 * safezoneH + safezoneY;
	w = 0.338021 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0,0,0,1};
	tooltip = "Shows how much cargo space is left for the selected vehicle"; //--- ToDo: Localize;
	};
	class cargobar: RscText
	{
	type = 8;
	idc = 1008;
	x = 0.734896 * safezoneW + safezoneX;
	y = 0.769395 * safezoneH + safezoneY;
	w = 0.252083 * safezoneW;
	h = 0.0219914 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.456863,0.356863,0.119608,1};
	colorBar[] = {0.456863,0.356863,0.119608,1};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	colorFrame[] = {1,1,1,1};
	};

	class viewport_infobox: RscText
	{
	idc = 1010;
	x = 0.648958 * safezoneW + safezoneX;
	y = 0.0601715 * safezoneH + safezoneY;
	w = 0.338021 * safezoneW;
	h = 0.0989614 * safezoneH;
	text = "Select Your Supply";
	colorBackground[] = {0,0,0,0.5};
	colorActive[] = {0,0,0,0.5};
	colorText[] = {1,1,1,1};
	sizeEx = 0.05;
	tooltip = "Name and Info of the selected item in viewport"; //--- ToDo: Localize;
	};	

};

	  class Objects
{
	class viewport
    {
    scale = 0.0070;
    direction[] = {10.80,-0.35,-0.65}; // {0,0,1};
    up[] = {0,0.65,-0.35}; // {0,1,0};
    shadow = 1;
    idc = 101;
    type = 80; 
    model = "\CA\Misc_E\WF\WF_HQ_M1130_CV_EP1.p3d";	
    x = 0.819833 * safezoneW + safezoneX;
    xBack = 0.7;
    y = 0.221715 * safezoneH + safezoneY;
    yBack = 0.12;
    z = 0.22;
    zBack = 0.22;
    inBack = 0;	
    enableZoom = 1;
    zoomDuration = 1;
    waitForLoad = 0; 
	};	
};	  
class Controls
{
	class supplyaccept: RscButton
	{
	idc = 1600;
	text = "Accept"; //--- ToDo: Localize;
	x = 0.9125 * safezoneW + safezoneX;
	y = 0.862858 * safezoneH + safezoneY;
	w = 0.0744792 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Accept and request selected supply"; //--- ToDo: Localize;
	action = execVM "tmscti\callsupply.sqf";
	};
	class supplycancel: RscButton
	{
	idc = 1601;
	text = "Cancel"; //--- ToDo: Localize;
	x = 0.832292 * safezoneW + safezoneX;
	y = 0.862858 * safezoneH + safezoneY;
	w = 0.0744792 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Cancel and close"; //--- ToDo: Localize;
	action = "closedialog 0;";
	};
	class supplylist1: RscListbox
	{
	idc = 1500;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.159133 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.758704 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	tooltip = "Select object family"; //--- ToDo: Localize;
	onLBSelChanged = nul = _this execVM "tmscti\gui\set_type_select_list.sqf";
	};
	class supplylist2: RscListbox
	{
	idc = 1501;
	x = 0.127604 * safezoneW + safezoneX;
	y = 0.159133 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.758704 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	tooltip = "Select object type"; //--- ToDo: Localize;
	onLBSelChanged = nul = _this execVM "tmscti\gui\set_object_select_list.sqf";
	};
	class supplylist3: RscListbox
	{
	idc = 1502;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.159133 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.70315 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	tooltip = "Select object model"; //--- ToDo: Localize;
	onLBSelChanged = nul = _this execVM "tmscti\gui\gui_show_object_in_viewport.sqf";
	};
	class attachlist1: RscListbox
	{
	idc = 1503;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.313073 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.15394 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	onLBSelChanged = nul = [1503] execVM "tmscti\gui\gui_show_attachment_in_viewport.sqf";	
	tooltip = "Select attachment: Optics"; //--- ToDo: Localize;
	};
	class attachlist2: RscListbox
	{
	idc = 1504;
	x = 0.505729 * safezoneW + safezoneX;
	y = 0.313073 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.15394 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	onLBSelChanged = nul = [1504] execVM "tmscti\gui\gui_show_attachment_in_viewport.sqf";
	tooltip = "Select attachment: Rail objects"; //--- ToDo: Localize;
	};
	class attachlist4: RscListbox
	{
	idc = 1505;
	x = 0.505729 * safezoneW + safezoneX;
	y = 0.521991 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.142944 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	onLBSelChanged = nul = [1505] execVM "tmscti\gui\gui_show_attachment_in_viewport.sqf";
	tooltip = "Select attachment: Bipods"; //--- ToDo: Localize;
	};
	class attachlist5: RscListbox
	{
	idc = 1508;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.719914 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.142944 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	onLBSelChanged = nul = [1508] execVM "tmscti\gui\gui_show_attachment_in_viewport.sqf";
	tooltip = "Select magazines"; //--- ToDo: Localize;
	};
	class attachlist6: RscListbox
	{
	idc = 1509;
	x = 0.505729 * safezoneW + safezoneX;
	y = 0.719914 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.142944 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	onLBSelChanged = nul = [1509] execVM "tmscti\gui\gui_show_attachment_in_viewport.sqf";
	tooltip = "Select camo variant"; //--- ToDo: Localize;
	};
	class attachlist3: RscListbox
	{
	idc = 1506;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.521991 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.142944 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	onLBSelChanged = nul = [1506] execVM "tmscti\gui\gui_show_attachment_in_viewport.sqf";
	tooltip = "Select attachment: Suppressors and Silencers"; //--- ToDo: Localize;
	};
	class shoppinglist: RscListbox
	{
	idc = 1507;
	x = 0.648958 * safezoneW + safezoneX;
	y = 0.554978 * safezoneH + safezoneY;
	w = 0.338021 * safezoneW;
	h = 0.208919 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.15,0.15,0.15,0.75};
	colorActive[] = {0,0,0,0.75};
	tooltip = "Your selected cargo"; //--- ToDo: Localize;
	};
	class Deletecargo: RscButton
	{
	idc = 1609;
	text = "Delete"; //--- ToDo: Localize;
	x = 0.752083 * safezoneW + safezoneX;
	y = 0.80788 * safezoneH + safezoneY;
	w = 0.0744792 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Delete selected cargo"; //--- ToDo: Localize;
	action = execVM "tmscti\gui\gui_delete_selected_cargo.sqf";
	};
	class Deleteallcargo: RscButton
	{
	idc = 1610;
	text = "Delete all"; //--- ToDo: Localize;
	x = 0.832292 * safezoneW + safezoneX;
	y = 0.80788 * safezoneH + safezoneY;
	w = 0.0744792 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Delete all cargo in list"; //--- ToDo: Localize;
	action = execVM "tmscti\gui\gui_delete_all_cargo.sqf";
	};
	class addtocart: RscButton
	{
	idc = 1611;
	text = "Add to cargo list"; //--- ToDo: Localize;
	x = 0.648959 * safezoneW + safezoneX;
	y = 0.80788 * safezoneH + safezoneY;
	w = 0.0973958 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Add selected supply to cargo list"; //--- ToDo: Localize;
	action = execVM "tmscti\gui\add_object_to_cargolist.sqf";
	};
	class supplycargocraftlist: RscListbox
	{
	idc = 2100;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.203116 * safezoneH + safezoneY;
	w = 0.252083 * safezoneW;
	h = 0.0879657 * safezoneH;
	onLBSelChanged = nul = _this execVM "tmscti\gui\gui_calculate_cargo_bar.sqf";
	tooltip = "Possible transport options for this supply location"; //--- ToDo: Localize;
	};

class singleobjecttocargo: RscButton
{
	idc = 1673;
	text = "Add to cargo list >>>"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.862858 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1502] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";
	tooltip = "Add the selected object to cargolist without attachments"; //--- ToDo: Localize;

};
class singlemagazinetocargo: RscButton
{
	idc = 1674;
	text = "Add single magazine >>>"; //--- ToDo: Localize;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.862858 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1508] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";	
	tooltip = "Add the selected magazine to cargo list"; //--- ToDo: Localize;

};
class camovariants: RscButton
{
	idc = 1675;
	text = "Select camo >>>"; //--- ToDo: Localize;
	x = 0.505729 * safezoneW + safezoneX;
	y = 0.862858 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1509] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";	
	tooltip = "Select camo variant"; //--- ToDo: Localize;

};
class singlesilencertocargo: RscButton
{
	idc = 1676;
	text = "Add single silencer >>>"; //--- ToDo: Localize;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.664936 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1506] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";
	tooltip = "Add selected silencer to cargo list"; //--- ToDo: Localize;

};
class singlebipodtocargo: RscButton
{
	idc = 1677;
	text = "Add single bipod >>>"; //--- ToDo: Localize;
	x = 0.505729 * safezoneW + safezoneX;
	y = 0.664936 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1505] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";
	tooltip = "Add selected bipod to cargo list"; //--- ToDo: Localize;

};
class singleoptictocargo: RscButton
{
	idc = 1678;
	text = "Add single optic >>>"; //--- ToDo: Localize;
	x = 0.373958 * safezoneW + safezoneX;
	y = 0.467013 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1503] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";	
	tooltip = "Add selected optic to cargo list"; //--- ToDo: Localize;

};
class singlerailobjecttocargolist: RscButton
{
	idc = 1679;
	text = "Add single railobject >>>"; //--- ToDo: Localize;
	x = 0.505729 * safezoneW + safezoneX;
	y = 0.467013 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	action = [1504] execVM "tmscti\gui\gui_add_single_attachment_to_cargolist.sqf";
	tooltip = "Add selected rail object to cargo list"; //--- ToDo: Localize;

};
    // >>>>>>>>>>>>>>>>>>>>>>>>>>>>Categories<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<	
	class supplyfobinst: RscButton
	{
	idc = 1602;
	text = "FOB Installations"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0601715 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "FOB installations and structures"; //--- ToDo: Localize;
	action = [tms_idc_all_vehicles + tms_idc_all_gear + tms_idc_supply, tms_idc_fob_installations] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplycontainers: RscButton
	{
	idc = 1606;
	text = "FOB Containers"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Additional FOB installations in a cargo container"; //--- ToDo: Localize;
	};
	class supplyfobdef: RscButton
	{
	idc = 1607;
	text = "FOB Defenses"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Stationary Weapons and Defenses"; //--- ToDo: Localize;
	};
	class supplyfobfort: RscButton
	{
	idc = 1608;
	text = "FOB Fortification"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Sandbags, barbed wire and fortification materials"; //--- ToDo: Localize;
	};
// >>>>>>>>>>>>>>>>>>>>>>>>>>>VEHICLES<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	class supplyvehicles: RscButton
	{
	idc = 1603;
	text = "Vehicles"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.0601715 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "land, air and naval vehicles"; //--- ToDo: Localize;
	action = [tms_idc_fob_installations + tms_idc_all_gear + tms_idc_supply, tms_idc_vehicles] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplyland: RscButton
	{
	idc = 1618;
	text = "Land"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Land vehicles, like tanks, MRAPs and transporters"; //--- ToDo: Localize;
	action = [tms_idc_air + tms_idc_naval + tms_idc_statics, tms_idc_land] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplymbts: RscButton
	{
	idc = 1621;
	text = "MBTs"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Main Battle Tanks"; //--- ToDo: Localize;
	action = [tms_supply_mbt_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplyifvsaps: RscButton
	{
	idc = 1622;
	text = "IFVs & APCs"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Infantry Fighting Vehicles and Armored Personnel Carriers"; //--- ToDo: Localize;
	};
	class supplymraps: RscButton
	{
	idc = 1623;
	text = "MRAPs"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Mine Resistant Ambush Vehicles"; //--- ToDo: Localize;
	action = [tms_supply_mrap_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplylight: RscButton
	{
	idc = 1624;
	text = "Transport"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Transport and light vehicles"; //--- ToDo: Localize;
	action = [tms_supply_transport_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplyartillery: RscButton
	{
	idc = 1625;
	text = "Artillery"; //--- ToDo: Localize;
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Howitzers, mobile mortar systems and Rocket artillery"; //--- ToDo: Localize;
	};
	class supplyAA: RscButton
	{
	idc = 1626;
	text = "Anti Air"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Anti Air, Anti Air Artillery and Air Defense Systems"; //--- ToDo: Localize;
	};
	class supplyMEVs: RscButton
	{
	idc = 1627;
	text = "MEVs"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Medical Evacuation Vehicles"; //--- ToDo: Localize;
	};
	class supplylogisticvehicles: RscButton
	{
	idc = 1628;
	text = "Logistics"; //--- ToDo: Localize;
	x = 0.56875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Towing machines, ammo, fuel, spare parts transport vehicles"; //--- ToDo: Localize;
	};
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>AIR<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	class supplyfair: RscButton
	{
	idc = 1619;
	text = "Air"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Air vehicles, like jets, helicopters and UAVs"; //--- ToDo: Localize;
	action = [tms_idc_land + tms_idc_naval + tms_idc_statics, tms_idc_air] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplyattackchopper: RscButton
	{
	idc = 1629;
	text = "Attack helicopters"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Scout and attack helicopters"; //--- ToDo: Localize;
	action = [tms_supply_attackhelicopter_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplytranschopper: RscButton
	{
	idc = 1630;
	text = "Helitrans"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Light, medium and heavy transport helicopters"; //--- ToDo: Localize;
	action = [tms_supply_transporthelicopter_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplyfighterjets: RscButton
	{
	idc = 1631;
	text = "Fighter jets"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Multi role combat aircrafts, interceptor jets and air superiority fighter"; //--- ToDo: Localize;
	action = [tms_supply_fighter_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplygroundattackjets: RscButton
	{
	idc = 1632;
	text = "GA - planes"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Ground attack planes, gunships and fighter-bomber"; //--- ToDo: Localize;
	action = [tms_supply_gaplanes_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplybomber: RscButton
	{
	idc = 1633;
	text = "Bomber"; //--- ToDo: Localize;
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Heavy bomber"; //--- ToDo: Localize;
	action = [tms_supply_bomber_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplycargoplanes: RscButton
	{
	idc = 1634;
	text = "Cargo planes"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Transport and cargo planes"; //--- ToDo: Localize;
	};
	class supplyUAVs: RscButton
	{
	idc = 1635;
	text = "UAVs"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Unmanned aerial vehicles"; //--- ToDo: Localize;
	};
	class supplyspjets: RscButton
	{
	idc = 1636;
	text = "Special purpose"; //--- ToDo: Localize;
	x = 0.56875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "AWACs, strato tanker and other special purpose planes"; //--- ToDo: Localize;
	};
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>NAVAL<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	class supplynaval: RscButton
	{
	idc = 1620;
	text = "Naval"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Naval vehicles, like speedboats, submarines and ships "; //--- ToDo: Localize;
	action = [tms_idc_air + tms_idc_land + tms_idc_statics, tms_idc_naval] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
class supplyassaultbaots: RscButton
	{
	idc = 1637;
	text = "Assault boats"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Small assault, patrol and speed boats"; //--- ToDo: Localize;
	};
	class supplylandingcrafts: RscButton
	{
	idc = 1638;
	text = "Landing crafts"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Landing and transport ships"; //--- ToDo: Localize;
	};
	class supplysubmarines: RscButton
	{
	idc = 1639;
	text = "Submarines"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "SDVs and Submarines"; //--- ToDo: Localize;
	};
	class supplystatics: RscButton
	{
	idc = 1670;
	text = "Staticssystems"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Radar installations, heavy static weapons and land containers"; //--- ToDo: Localize;
	action = [tms_idc_air + tms_idc_land + tms_idc_naval, tms_idc_statics] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplystaticweapons: RscButton
	{
	idc = 1671;
	text = "Static weapons"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Transportable systems for defense, detection or attacks"; //--- ToDo: Localize;
	};
	class supplydetection: RscButton
	{
	idc = 1672;
	text = "Static detection"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Transportable systems for defense, detection or attacks"; //--- ToDo: Localize;
	};
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>GEAR<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	class supplygear: RscButton
	{
	idc = 1604;
	text = "Gear"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.0601715 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Weapons, uniforms and gear"; //--- ToDo: Localize;
	action = [tms_idc_fob_installations + tms_idc_all_vehicles + tms_idc_supply, tms_idc_gear] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplyweapons: RscButton
	{
	idc = 1640;
	text = "Weapons"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Infantry weapons, like assault rifles, pistols, rocket launchers and grenades"; //--- ToDo: Localize;
	action = [tms_idc_equipment + tms_idc_uniforms, tms_idc_weapons] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplypistols: RscButton
	{
	idc = 1643;
	text = "Pistols"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Pistols and Revolvers"; //--- ToDo: Localize;
	};
	class supplyMPsPDWs: RscButton
	{
	idc = 1644;
	text = "MPs & PDWs"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Machine Pistols and Personal Defense Weapons"; //--- ToDo: Localize;
	};
	class supplyAssaultRifles: RscButton
	{
	idc = 1645;
	text = "Assault rifles"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Assault and battle rifles"; //--- ToDo: Localize;
	action = [tms_supply_assaultrifle_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplyMachineGuns: RscButton
	{
	idc = 1646;
	text = "Machineguns"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Light, medium and heavy machine guns"; //--- ToDo: Localize;
	action = [tms_supply_machinegun_families] execVM "tmscti\gui\set_family_select_list.sqf";
	};
	class supplySnipers: RscButton
	{
	idc = 1647;
	text = "Sniper rifles"; //--- ToDo: Localize;
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Dedicated marksmen and sniper rifles"; //--- ToDo: Localize;
	};
	class supplyShotguns: RscButton
	{
	idc = 1648;
	text = "Shotguns"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Shotguns"; //--- ToDo: Localize;
	};
	class supplyLaunchers: RscButton
	{
	idc = 1649;
	text = "Launchers"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "AA, AP and AT launchers"; //--- ToDo: Localize;
	};
	class supplyExplosives: RscButton
	{
	idc = 1650;
	text = "Explosives"; //--- ToDo: Localize;
	x = 0.56875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Grenades, satchel charges, mines and other explosives"; //--- ToDo: Localize;
	};
	class supplyequipment: RscButton
	{
	idc = 1641;
	text = "Equipment"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Navigation, terminals, night vision goggles and other items"; //--- ToDo: Localize;
	action = [tms_idc_weapons + tms_idc_uniforms, tms_idc_equipment] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplymedical: RscButton
	{
	idc = 1651;
	text = "Medical items"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Bandages, morphine and other medical items"; //--- ToDo: Localize;
	};
	class supplyPDAs: RscButton
	{
	idc = 1652;
	text = "PDAs"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Personal Digital Assistants, GPS-Devices and Terminals"; //--- ToDo: Localize;
	};
	class supplyCommunication: RscButton
	{
	idc = 1653;
	text = "Communication"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Radios and other communication tools"; //--- ToDo: Localize;
	};
	class supplyGoggles: RscButton
	{
	idc = 1654;
	text = "Goggles & Optics"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Night Vision Goggles, Rangefinder, HUDs and Tacglasses"; //--- ToDo: Localize;
	};
	class supplyNavigation: RscButton
	{
	idc = 1655;
	text = "Navigation"; //--- ToDo: Localize;
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Maps, compasses and maptools"; //--- ToDo: Localize;
	};
	class supplyOtheritems: RscButton
	{
	idc = 1656;
	text = "Other"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Other items, like repair kits and plastic handcuffs"; //--- ToDo: Localize;
	};
	class supplyuniforms: RscButton
	{
	idc = 1642;
	text = "Uniforms"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Helmets, backpacks, uniforms, vests and other uniform parts"; //--- ToDo: Localize;
	action = [tms_idc_weapons + tms_idc_equipment, tms_idc_uniforms] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplycombathelmets: RscButton
	{
	idc = 1657;
	text = "Combat helmets"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Different combat helmets, caps and berets"; //--- ToDo: Localize;
	};
	class supplycombatuniforms: RscButton
	{
	idc = 1658;
	text = "Combat uniforms"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Different combat suits"; //--- ToDo: Localize;
	};
	class supplyvests: RscButton
	{
	idc = 1659;
	text = "Combat Vests"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Different Combat Vests"; //--- ToDo: Localize;
	};
	class supplybackpacks: RscButton
	{
	idc = 1660;
	text = "Backpacks"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Different backpacks"; //--- ToDo: Localize;
	};
	class supplyFacialwear: RscButton
	{
	idc = 1661;
	text = "Facial wear"; //--- ToDo: Localize;
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Balaclavas and scarfs"; //--- ToDo: Localize;
	};
	class supplypilotwear: RscButton
	{
	idc = 1662;
	text = "Pilot wear"; //--- ToDo: Localize;
	x = 0.408333 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Pilot uniforms, helmets and parachutes"; //--- ToDo: Localize;
	};
	class supplygcrewwear: RscButton
	{
	idc = 1663;
	text = "Crew wear"; //--- ToDo: Localize;
	x = 0.488542 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Uniforms and items for vehicle crews"; //--- ToDo: Localize;
	};
	class supplygroundcrew: RscButton
	{
	idc = 1664;
	text = "Ground crew"; //--- ToDo: Localize;
	x = 0.56875 * safezoneW + safezoneX;
	y = 0.126146 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Uniforms and items for ground crews and logistics"; //--- ToDo: Localize;
	};
	class Supplysupplies: RscButton
	{
	idc = 1605;
	text = "Supplies"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.0601715 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Fuel, ammonition, parts, medical items"; //--- ToDo: Localize;
	action = [tms_idc_all_gear + tms_idc_all_vehicles + tms_idc_fob_installations, tms_idc_supply] execVM "tmscti\gui\on_category_button_click.sqf"; 
	};
	class supplyMedicalcargo: RscButton
	{
	idc = 1665;
	text = "Medical cargo"; //--- ToDo: Localize;
	x = 0.0072916 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Transportable MASH and cargo boxes with medic supply"; //--- ToDo: Localize;
	Action = execVM "tmscti\supply.sqf";
	};
	class supplyAmmocargo: RscButton
	{
	idc = 1666;
	text = "Ammo cargo"; //--- ToDo: Localize;
	x = 0.0875 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Vehicle Ammunition, missiles and cargo boxes with ammunition"; //--- ToDo: Localize;
	};
	class supplyFuelcargo: RscButton
	{
	idc = 1667;
	text = "Fuel"; //--- ToDo: Localize;
	x = 0.167708 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Fuel tanks and jerry cans"; //--- ToDo: Localize;
	};
	class supplySparparts: RscButton
	{
	idc = 1668;
	text = "Spare parts"; //--- ToDo: Localize;
	x = 0.247917 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Spare parts for vehicles and repair tools"; //--- ToDo: Localize;
	};
	class supplyLogisticcargo: RscButton
	{
	idc = 1669;
	text = "Logistics"; //--- ToDo: Localize;
	x = 0.328125 * safezoneW + safezoneX;
	y = 0.0931586 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0329871 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Empty boxes and containers"; //--- ToDo: Localize;
	};

		};
			};
			