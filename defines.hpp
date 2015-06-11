#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102

#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4

class ScrollBar
{
	color[] = {1,1,1,0.6};
	colorActive[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.3};
	thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
	shadow = 0;
	scrollSpeed = 0.06;
	width = 0;
	height = 0;
	autoScrollEnabled = 0;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};


class RscCombo
{
  idc = -1;
  type = CT_COMBO;
  style = ST_CENTER;
  shadow = 2;
  colorText[] = {1,1,1,1};
  font = "TahomaB";
  sizeEx = 0.0225;
  colorBackground[] = { 0,0,0, 0.5 }; 
  text = ""; 
  class Scrollbar : Scrollbar {};
};


class RscText
{
   access = 0;
   type = 0;
   idc = -1;
   colorBackground[] = {0,0,0,0.5};
   colorText[] = {1,1,1,1};
   text = "";
   fixedWidth = 0;
   x = 0;
   y = 0;
   h = 0.037;
   w = 0.3;
   style = 0;
   shadow = 1;
   font = "TahomaB";
   SizeEx = 0.0225;
};
class RscButton
{
   access = 0;
   type = 1;
   text = "";
   colorText[] = {1,1,1,1};
   colorDisabled[] = {0.1,0.1,0.1,1};
   colorBackground[] = {0.277,0.414,0.559,1};
   colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
   colorBackgroundActive[] = {0.833333,0.706667,0.409804,1};
   colorFocused[] = {0.833333,0.706667,0.409804,1};
   colorShadow[] = {0.023529,0,0.0313725,0};
   colorBorder[] = {0.023529,0,0.0313725,1};
   soundEnter[] = {"",0.09,1};
   soundPush[] = {"",0,0};
   soundClick[] = {"",0.07,1};
   soundEscape[] = {"",0.09,1};
   style = 2;
   x = 0;
   y = 0;
   w = 0.095589;
   h = 0.039216;
   shadow = 0;
   font = "TahomaB";
   sizeEx = 0.0225;
   offsetX = 0.003;
   offsetY = 0.003;
   offsetPressedX = 0.002;
   offsetPressedY = 0.002;
   borderSize = 0;
};
class RscListbox
{
	access = 0;
	type = 5;
	style = 0;
	w = 0.4;
	h = 0.4;
	font = "TahomaB";
	sizeEx = 0.0225;
	rowHeight = 0;
	colorText[] = {1,1,1,1};
	colorScrollbar[] = {1,1,1,1};
	colorSelect[] = {0,0,0,1};
	colorSelect2[] = {1,0.5,0,1};
	colorSelectBackground[] = {0.6,0.6,0.6,1};
	colorSelectBackground2[] = {0.2,0.2,0.2,1};
	colorBackground[] = {0,0,0,1};
	maxHistoryDelay = 1.0;
	period = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	shadow = 0;
	
		class ListScrollBar
		{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		thumb = "#(argb,8,8,3)color(1,1,1,1)";
		arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
		arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
		border = "#(argb,8,8,3)color(1,1,1,1)";
		shadow = 0;
		};
};
class RscPicture
{
 access = 0;
 type = CT_STATIC;
 idc = -1;
 style = 48;
 colorBackground[] = {0,0,0,0};
 colorText[] = {1,1,1,1};
 font = "TahomaB";
 sizeEx = 0.0225;
 lineSpacing = 0;
 text = "";
 fixedWidth = 0;
 shadow = 0;
};