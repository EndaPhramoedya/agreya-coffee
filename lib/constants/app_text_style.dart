import 'package:agreya_coffee/constants/constants.dart';
import 'package:flutter/material.dart';

/*
Font Weight Guide
100 – Thin
200 – Extra Light (Ultra Light)
300 – Light
400 – Normal
500 – Medium
600 – Semi Bold (Demi Bold)
700 – Bold
800 – Extra Bold (Ultra Bold)
900 – Black (Heavy)
*/

class AppTextStyle {
  // white (0xFFFFFFFF)
  static TextStyle white_400_10 = const TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: Colors.white);
  static TextStyle white_400_12 = const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white);
  static TextStyle white_400_14 = const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white);
  static TextStyle white_400_16 = const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white);
  static TextStyle white_500_10 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.white);
  static TextStyle white_500_12 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: Colors.white);
  static TextStyle white_500_14 = const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white);
  static TextStyle white_500_16 = const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white);
  static TextStyle white_500_18 = const TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white);
  static TextStyle white_600_13 = const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: Colors.white);
  static TextStyle white_600_14 = const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.white);
  static TextStyle white_600_16 = const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white);
  static TextStyle white_700_8 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 8, color: Colors.white);
  static TextStyle white_700_12 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: Colors.white);
  static TextStyle white_700_14 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.white);
  static TextStyle white_700_16 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white);
  static TextStyle white_700_18 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white);
  static TextStyle white_900_12 = const TextStyle(fontWeight: FontWeight.w900, fontSize: 12, color: Colors.white);

  // black (0xFF000000)
  static TextStyle black_400_12 = const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black);
  static TextStyle black_400_14 = const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Colors.black);
  static TextStyle black_700_10 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: Colors.black);
  static TextStyle black_700_14 = const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: Colors.black);

  // kBlack_22232A
  static TextStyle black22232A_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kBlack22232A);
  static TextStyle black22232A_400_16 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.kBlack22232A);

  // kBlack_121314
  static TextStyle black121314_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kBlack121314);
  static TextStyle black121314_400_13 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: AppColors.kBlack121314);
  static TextStyle black121314_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kBlack121314);
  static TextStyle black121314_400_16 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.kBlack121314);
  static TextStyle black121314_500_12 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.kBlack121314);
  static TextStyle black121314_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kBlack121314);
  static TextStyle black121314_500_16 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.kBlack121314);
  static TextStyle black121314_500_18 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.kBlack121314);
  static TextStyle black121314_500_20 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.kBlack121314);
  static TextStyle black121314_500_24 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 24, color: AppColors.kBlack121314);
  static TextStyle black121314_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kBlack121314);
  static TextStyle black121314_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kBlack121314);
  static TextStyle black121314_700_16 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.kBlack121314);
  static TextStyle black121314_700_18 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.kBlack121314);

  // kBlack_19181A
  static TextStyle black19181A_400_13 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 13, color: AppColors.kBlack19181A);
  static TextStyle black19181A_600_13 =
      const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.kBlack19181A);
  static TextStyle black19181A_600_14 =
      const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.kBlack19181A);

  // kBlack_192740
  static TextStyle black192740_400_25 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 25, color: AppColors.kBlack192740);
  static TextStyle black192740_400_40 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 40, color: AppColors.kBlack192740);

  // kBlack_334150
  static TextStyle black334150_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kBlack334150);
  static TextStyle black334150_700_10 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: AppColors.kBlack334150);
  static TextStyle black334150_500_12 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.kBlack334150);
  static TextStyle black334150_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kBlack334150);
  static TextStyle black334150_500_20 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.kBlack334150);
  static TextStyle black334150_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kBlack334150);
  static TextStyle black334150_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kBlack334150);
  static TextStyle black334150_700_16 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.kBlack334150);
  static TextStyle black334150_700_20 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: AppColors.kBlack334150);
  static TextStyle black334150_700_21 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 21, color: AppColors.kBlack334150);
  static TextStyle black334150_700_24 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.kBlack334150);
  static TextStyle black334150_700_28 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 28, color: AppColors.kBlack334150);

  // kBlack_3C3D3E
  static TextStyle black3C3D3E_400_10 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_500_16 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_700_20 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 20, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_800_20 =
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 20, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_800_22 =
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 22, color: AppColors.kBlack3C3D3E);
  static TextStyle black3C3D3E_800_36 =
      const TextStyle(fontWeight: FontWeight.w800, fontSize: 36, color: AppColors.kBlack3C3D3E);

  // kBlue18A0FB
  static TextStyle blue18A0FB_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kBlue18A0FB);
  static TextStyle blue18A0FB_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kBlue18A0FB);
  static TextStyle blue18A0FB_500_12 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.kBlue18A0FB);
  static TextStyle blue18A0FB_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kBlue18A0FB);
  static TextStyle blue18A0FB_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kBlue18A0FB);
  static TextStyle blue18A0FB_700_24 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.kBlue18A0FB);

  // kBlue4A90E2
  static TextStyle blue4A90E2_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kBlue4A90E2);
  static TextStyle blue4A90E2_700_8 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 8, color: AppColors.kBlue4A90E2);
  static TextStyle blue4A90E2_700_9 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 9, color: AppColors.kBlue4A90E2);
  static TextStyle blue4A90E2_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kBlue4A90E2);
  static TextStyle blue4A90E2_700_16 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.kBlue4A90E2);
  static TextStyle blue4A90E2_700_18 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.kBlue4A90E2);
  static TextStyle blue4A90E2_700_24 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.kBlue4A90E2);

  // kBrown895223
  static TextStyle brown895223_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kBrown895223);
  static TextStyle brown895223_700_18 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.kBrown895223);
  static TextStyle brown895223_700_24 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.kBrown895223);

  // kGreen46AC95
  static TextStyle green46AC95_500_15 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 15, color: AppColors.kGreen46AC95);
  static TextStyle green46AC95_700_18 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.kGreen46AC95);

  // kGreen2BBE72
  static TextStyle green2BBE72_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_500_12 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_500_16 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kGreen2BBE72);
  static TextStyle green2BBE72_700_24 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 24, color: AppColors.kGreen2BBE72);

  // kGreen319C4C
  static TextStyle green319C4C_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGreen319C4C);
  static TextStyle green319C4C_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kGreen319C4C);
  static TextStyle green319C4C_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kGreen319C4C);
  static TextStyle green319C4C_700_13 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 13, color: AppColors.kGreen319C4C);
  static TextStyle green319C4C_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kGreen319C4C);
  static TextStyle green319C4C_700_16 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.kGreen319C4C);

  // kGreen358F45
  static TextStyle green358F45_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGreen358F45);
  static TextStyle green358F45_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kGreen358F45);

  // kGrey_494A4A
  static TextStyle grey494A4A_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGrey494A4A);

  // kGrey_676768
  static TextStyle grey676768_400_10 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: AppColors.kGrey676768);
  static TextStyle grey676768_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGrey676768);
  static TextStyle grey676768_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kGrey676768);
  static TextStyle grey676768_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kGrey676768);
  static TextStyle grey676768_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kGrey676768);
  static TextStyle grey676768_500_16 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.kGrey676768);
  static TextStyle grey676768_500_18 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.kGrey676768);
  static TextStyle grey676768_500_20 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 20, color: AppColors.kGrey676768);

  // kGrey_6B7380
  static TextStyle grey6B7380_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGrey6B7380);

  // kGrey_7F8FA4
  static TextStyle grey7F8FA4_400_10 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 10, color: AppColors.kGrey7F8FA4);
  static TextStyle grey7F8FA4_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGrey7F8FA4);
  static TextStyle grey7F8FA4_700_10 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 10, color: AppColors.kGrey7F8FA4);

  // kGrey_D1D1D1
  static TextStyle greyD1D1D1_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGreyD1D1D1);
  static TextStyle greyD1D1D1_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kGreyD1D1D1);
  static TextStyle greyD1D1D1_400_16 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.kGreyD1D1D1);
  static TextStyle greyD1D1D1_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kGreyD1D1D1);

  // kGrey_D8D8D9
  static TextStyle greyD8D8D9_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kGreyD8D8D9);

  // kGrey_909191
  static TextStyle grey909191_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGrey909191);
  static TextStyle grey909191_400_14 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: AppColors.kGrey909191);
  static TextStyle grey909191_400_16 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.kGrey909191);
  static TextStyle grey909191_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kGrey909191);
  static TextStyle grey909191_500_12 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.kGrey909191);
  static TextStyle grey909191_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kGrey909191);
  static TextStyle grey909191_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kGrey909191);
  static TextStyle grey909191_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kGrey909191);

  // kGrey_999999
  static TextStyle grey999999_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kGrey999999);
  static TextStyle grey999999_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kGrey999999);

  // kRedD02630
  static TextStyle redD02630_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kRedD02630);
  static TextStyle redD02630_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kRedD02630);
  static TextStyle redD02630_700_12 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: AppColors.kRedD02630);
  static TextStyle redD02630_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kRedD02630);
  static TextStyle redD02630_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kRedD02630);
  static TextStyle redD02630_700_18 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.kRedD02630);

  // kRed8C0109
  static TextStyle red8C0109_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kRed8C0109);

  // kOrangeF5A623
  static TextStyle orangeF5A623_400_12 =
      const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.kOrangeF5A623);
  static TextStyle orangeF5A623_500_10 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 10, color: AppColors.kOrangeF5A623);
  static TextStyle orangeF5A623_500_14 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.kOrangeF5A623);
  static TextStyle orangeF5A623_700_14 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.kOrangeF5A623);
  static TextStyle orangeF5A623_700_16 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.kOrangeF5A623);
  static TextStyle orangeF5A623_700_18 =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: AppColors.kOrangeF5A623);

  // custom text style
  static TextStyle customTextStyle({
    required FontWeight weight,
    required double size,
    required Color color,
  }) =>
      TextStyle(fontWeight: weight, fontSize: size, color: color);
}
