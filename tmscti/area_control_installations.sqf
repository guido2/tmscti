/*
This file lists the class names of objects that will count as area control installations for both sides.
*/

/*
USA:

FOB command post:
Command Center (HQ) / Unpacked from shipping container
M1130_HQ_unfolded_Base_EP1

Mobile command post:
Must be deployed / unfolded, becomes immobilised through that.
Not supported yet.
rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy

Mobile command vehicle:
Must unfold antenna to be deployed, stays mobile after deploying
Not supported yet.
CUP_B_LAV25_HQ_USMC
*/

tms_aci_types_west = [
						[
						"M1130_HQ_unfolded_Base_EP1", // class name
						500 // Capture range in meters
						]
					 ];

/*
Russia:

FOB command post:
Command Center (HQ) / Unpacked from shipping container
BMP2_HQ_TK_unfolded_Base_EP1

Mobile command post:
Must be deployed / unfolded, becomes immobilised through that.
rhs_gaz66_r142_vmf

Mobile command vehicle:
Must unfold antenna to be deployed, stays mobile after deploying
CUP_O_BTR90_HQ_RU
*/

tms_aci_types_east = [
						[
						"BMP2_HQ_TK_unfolded_Base_EP1",
						500
						]
					 ];