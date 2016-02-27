class rsctitles
{
	titles[] = {victorypoints_display};

	class victorypoints_display
	{
		idd = 5002;
		movingenable = 0;
		duration = 1000000;
		fadein = 2;
		fadeout = 0;
		name = "victorypoints_display";
		onLoad = uiNamespace setVariable ["victorypoints_display", _this select 0];
		onUnLoad = uiNamespace setVariable ["victorypoints_display", nil];

		class controls
		{

		class tms_hud_victorypoints_us_text: RscText
		{
		idc = 1700;
		text = "U.S.A."; //--- ToDo: Localize;
		x = 0.952604 * safezoneW + safezoneX;
		y = 0.532987 * safezoneH + safezoneY;
		w = 0.0401042 * safezoneW;
		h = 0.0109957 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_us_points: RscText
		{
		idc = 1701;
		text = "0"; //--- ToDo: Localize;
		x = 0.952604 * safezoneW + safezoneX;
		y = 0.554979 * safezoneH + safezoneY;
		w = 0.034375 * safezoneW;
		h = 0.0109957 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_rus_text: RscText
		{
		idc = 1702;
		text = "RUS"; //--- ToDo: Localize;
		x = 0.952604 * safezoneW + safezoneX;
		y = 0.57697 * safezoneH + safezoneY;
		w = 0.034375 * safezoneW;
		h = 0.0109957 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_rus_points: RscText
		{
		idc = 1703;
		text = "0"; //--- ToDo: Localize;
		x = 0.952604 * safezoneW + safezoneX;
		y = 0.598961 * safezoneH + safezoneY;
		w = 0.034375 * safezoneW;
		h = 0.0109957 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_us_of100: RscText
		{
		idc = 1704;
		text = "/100"; //--- ToDo: Localize;
		x = 0.958333 * safezoneW + safezoneX;
		y = 0.554979 * safezoneH + safezoneY;
		w = 0.034375 * safezoneW;
		h = 0.0109957 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_rus_of100: RscText
		{
		idc = 1705;
		text = "/100"; //--- ToDo: Localize;
		x = 0.958333 * safezoneW + safezoneX;
		y = 0.598961 * safezoneH + safezoneY;
		w = 0.034375 * safezoneW;
		h = 0.0109957 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_title: RscText
		{
		idc = 1706;
		text = "Victory points"; //--- ToDo: Localize;
		x = 0.935417 * safezoneW + safezoneX;
		y = 0.5 * safezoneH + safezoneY;
		w = 0.0630208 * safezoneW;
		h = 0.0219914 * safezoneH;
		colorText[] = {1,1,1,1};
		colorBackground[] = {0,0,0,0};
		};
		class tms_hud_victorypoints_icon_us: RscText
		{
		text = "tmscti\images\tms_flag_usa.paa";
		idc = 1707;
		style = 48; //1 2 3...176
		shadow = true;
//		colorText[] = {1,1,1,1};
//		colorBackground[] = {1,1,1,1};
		x = 0.941146 * safezoneW + safezoneX;
		y = 0.532987 * safezoneH + safezoneY;
		w = 0.0114583 * safezoneW;
		h = 0.0109957 * safezoneH;
		};
		class tms_hud_victorypoints_icon_rus: RscText
		{
		text = "tmscti\images\tms_flag_rus.paa";
		style = 48; //1 2 3...176
		shadow = true;
		colorText[] = {1,1,1,1};
		colorBackground[] = {1,1,1,1};
		idc = 1708;
		x = 0.941146 * safezoneW + safezoneX;
		y = 0.57697 * safezoneH + safezoneY;
		w = 0.0114583 * safezoneW;
		h = 0.0109957 * safezoneH;
		};
		};
	};
};