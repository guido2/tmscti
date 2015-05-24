class hqsupply
   {   
      idd = 5000;
      movingenable = 0;
      onLoad = execVM "tmscti\supply.sqf";
      enableSimulation = 1;      

      class ControlsBackground
      {
		  class informationtext: RscText
{
	idc = 1001;
	x = 0.402604 * safezoneW + safezoneX;
	y = 0.510996 * safezoneH + safezoneY;
	w = 0.320833 * safezoneW;
	h = 0.175931 * safezoneH;
	tooltip = "Infotext"; //--- ToDo: Localize;
};
		  class bck: RscText
{
	idc = 1000;
	x = 0.270833 * safezoneW + safezoneX;
	y = 0.225107 * safezoneH + safezoneY;
	w = 0.458333 * safezoneW;
	h = 0.549786 * safezoneH;
};

	  };
class Objects
{

   
  class viewport
    { 
			scale = 0.02;
            direction[] = {0,-0.35,-0.65}; // {0,0,1};
            up[] = {0,0.65,-0.35}; // {0,1,0};
            shadow = 1;
            idc = 101;
            type = 80; 
			model = "\CA\Misc_E\WF\WF_HQ_M1130_CV_EP1.p3d";	
			x = 0.7;
            xBack = 0.7;
            y = 0.12;
            yBack = 0.12;
            z = 0.22;
            zBack = 0.22;
            inBack = 0;	
			enableZoom = 0;
            zoomDuration = 1;
            waitForLoad = 0; 

			
			
};
	  };

      class Controls
      {
		  class supplylist: RscListbox
{
	idc = 1500;
	x = 0.276562 * safezoneW + safezoneX;
	y = 0.236103 * safezoneH + safezoneY;
	w = 0.120313 * safezoneW;
	h = 0.527794 * safezoneH;
	tooltip = "Select your supply"; //--- ToDo: Localize;
};
class Acceptbutton: RscButton
{
	idc = 1600;
	text = "Accept"; //--- ToDo: Localize;
	x = 0.643229 * safezoneW + safezoneX;
	y = 0.719914 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0439828 * safezoneH;
	tooltip = "Call your supply"; //--- ToDo: Localize;
	action = execVM "tmscti\callsupply.sqf";
};
class Cancelbutton: RscButton
{
	idc = 1601;
	text = "Cancel"; //--- ToDo: Localize;
	x = 0.557292 * safezoneW + safezoneX;
	y = 0.719914 * safezoneH + safezoneY;
	w = 0.0802083 * safezoneW;
	h = 0.0439828 * safezoneH;
	tooltip = "Cancel and close"; //--- ToDo: Localize;
	action = "closedialog 0;";
};
      };

   };