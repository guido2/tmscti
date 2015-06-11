class teammanagement
	{

		idd = 5100;
		movingenable = 0;
		enableSimulation = 1;
		onLoad = execVM "tmscti\gui\gui_team_management_list_players.sqf";
		
class ControlsBackground
{
		
class teambckgrd: RscText
{
	idc = 1100;
	x = 0.0645833 * safezoneW + safezoneX;
	y = 0.104154 * safezoneH + safezoneY;
	w = 0.865104 * safezoneW;
	h = 0.791691 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamheader: RscText
{
	idc = 1101;
	text = "Team Management"; //--- ToDo: Localize;
	x = 0.0645833 * safezoneW + safezoneX;
	y = 0.104154 * safezoneH + safezoneY;
	w = 0.865104 * safezoneW;
	h = 0.0219914 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0.456863,0.356863,0.119608,1};
};
class teamxostripebck: RscText
{
	idc = 1111;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.181124 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamprivatestripebck: RscText
{
	idc = 1117;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.642944 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamlogistripebck: RscText
{
	idc = 1118;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.741906 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamcorpstripebck: RscText
{
	idc = 1116;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.565974 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamsargestripebck: RscText
{
	idc = 1115;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.489004 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamcaptainstripebck: RscText
{
	idc = 1113;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.335064 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamdetractstripebck: RscText
{
	idc = 1119;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.818876 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamleutstripebck: RscText
{
	idc = 1114;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.412034 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teammajorstripebck: RscText
{
	idc = 1112;
	x = 0.265104 * safezoneW + safezoneX;
	y = 0.258094 * safezoneH + safezoneY;
	w = 0.309375 * safezoneW;
	h = 0.0659743 * safezoneH;
	colorBackground[] = {0,0,0,0.5};
};
class teamnoxo: RscText
{
	idc = 1102;
	text = "0/1"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.19212 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows if a XO is in charge"; //--- ToDo: Localize;
};
class teamnomajor: RscText
{
	idc = 1103;
	text = "0/1"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.26909 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows number of majors in charge"; //--- ToDo: Localize;
};
class teamnocaptain: RscText
{
	idc = 1104;
	text = "0/1"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.34606 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows number of captains in charge"; //--- ToDo: Localize;
};
class teamnolieutenant: RscText
{
	idc = 1105;
	text = "0/2"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.42303 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows number of lieutenants in charge"; //--- ToDo: Localize;
};
class teamnosergeant: RscText
{
	idc = 1106;
	text = "0/4"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows number of sergeants in charge"; //--- ToDo: Localize;
};
class teamnocorporal: RscText
{
	idc = 1107;
	text = "0/8"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.57697 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows number of corporals in charge"; //--- ToDo: Localize;
};
class teamnologistician: RscText
{
	idc = 1108;
	text = "0/4"; //--- ToDo: Localize;
	x = 0.391146 * safezoneW + safezoneX;
	y = 0.752901 * safezoneH + safezoneY;
	w = 0.0401042 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,1};
	tooltip = "Shows number of logistician in action"; //--- ToDo: Localize;
};
class teamrankallowheader: RscText
{
	idc = 1109;
	text = "Allow call for supply"; //--- ToDo: Localize;
	x = 0.471354 * safezoneW + safezoneX;
	y = 0.137141 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	tooltip = "Sets which ranks are allowed to call for supply"; //--- ToDo: Localize;
};
class teamcmdstrheader: RscText
{
	idc = 1110;
	text = "Control team command structure"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.137141 * safezoneH + safezoneY;
	w = 0.166146 * safezoneW;
	h = 0.0439828 * safezoneH;
};
	};

	class Controls
{
class teamplayerlist: RscListbox
{
	idc = 1510;
	x = 0.0703125 * safezoneW + safezoneX;
	y = 0.137141 * safezoneH + safezoneY;
	w = 0.194792 * safezoneW;
	h = 0.747708 * safezoneH;
};
class teamxobutton: RscButton
{
	idc = 1673;
	text = "Promote to XO"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.19212 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Promote the selected player as your Executive Officer"; //--- ToDo: Localize;
};
class teammajorbutton: RscButton
{
	idc = 1674;
	text = "Promote to Major"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.26909 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Promote the selected player as Major (Battalion leader)"; //--- ToDo: Localize;
	action = ["MAJOR"] execVM "tmscti\gui\promote_player.sqf";
};
class teamcaptainbutton: RscButton
{
	idc = 1675;
	text = "Promote to Captain"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.34606 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Promote the selected player as Captain (Company leader)"; //--- ToDo: Localize;
	action = ["CAPTAIN"] execVM "tmscti\gui\promote_player.sqf";
};
class teamLieutenantbutton: RscButton
{
	idc = 1676;
	text = "Promote to Lieutenant"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.42303 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Promote the selected player as Lieutenant (Platoon leader)"; //--- ToDo: Localize;
	action = ["LIEUTENANT"] execVM "tmscti\gui\promote_player.sqf";
};
class teamSergeantbutton: RscButton
{
	idc = 1677;
	text = "Promote to Sergeant"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.5 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Promote the selected player as Sergeant (Squad leader)"; //--- ToDo: Localize;
	action = ["SERGEANT"] execVM "tmscti\gui\promote_player.sqf";
};
class teamCorporalbutton: RscButton
{
	idc = 1678;
	text = "Promote to Corporal"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.57697 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Promote the selected player as Corporal (Fireteam leader)"; //--- ToDo: Localize;
	action = ["CORPORAL"] execVM "tmscti\gui\promote_player.sqf";
};
class teamprivatebutton: RscButton
{
	idc = 1679;
	text = "Set rank to Private"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.65394 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Set rank to Private (rifleman)"; //--- ToDo: Localize;
	action = ["PRIVATE"] execVM "tmscti\gui\promote_player.sqf";
};
class teamlogisticianbutton: RscButton
{
	idc = 1680;
	text = "Declare as logistician"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.752901 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Declare the selected player as logistician"; //--- ToDo: Localize;
};
class teamauthoritybutton: RscButton
{
	idc = 1681;
	text = "Detract supply authority"; //--- ToDo: Localize;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.829871 * safezoneH + safezoneY;
	w = 0.114583 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Detract the authority to call for supplies of the selected player"; //--- ToDo: Localize;
};
class teamclosebutton: RscButton
{
	idc = 1682;
	text = "Close"; //--- ToDo: Localize;
	x = 0.838021 * safezoneW + safezoneX;
	y = 0.840867 * safezoneH + safezoneY;
	w = 0.0859375 * safezoneW;
	h = 0.0439828 * safezoneH;
	colorBackground[] = {0.456863,0.356863,0.119608,1};
	colorActive[] = {0.656863,0.556863,0.319608,1};
	tooltip = "Close and exit"; //--- ToDo: Localize;
	action = "closedialog 0;";
};


	};
		};
