// ignore_for_file: prefer_final_fields

import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_constants.dart';
import 'package:admin_panel_for_store/core/utils/app_fonts.dart';
import 'package:admin_panel_for_store/core/utils/app_icon_assets.dart';
import 'package:admin_panel_for_store/screens/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> textList = [
    AppString.totalSales,
    AppString.totalProfit,
    AppString.totalCost,
    AppString.revenue,
    AppString.netIncome,
    AppString.today,
  ];
  List<String> textVal = [
    '560',
    '185',
    '375',
    '742',
    '150',
    '4600',
  ];
  List<double> valueList = [
    90,
    80,
    70,
    60,
    50,
    40,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const AppDrawer(),
      appBar: AppBarComponnent(scafKey: _scaffoldKey),
      // AppBar(
      //   leading: Padding(
      //     padding: EdgeInsets.only(
      //       left: 15.w,
      //     ),
      //     child: InkWell(
      //       onTap: (() {
      //         scaffoldKey.currentState?.openDrawer();
      //       }),
      //       child: SvgPicture.asset(
      //         AppIconAssets.iconsGroup44,
      //       ),
      //     ),
      //   ),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.welcome,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SearchComponnent(),
            Expanded(
              child: GridView.builder(
                itemCount: textList.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 1.2,
                  mainAxisSpacing: 15.h,
                  crossAxisSpacing: 15.w,
                ),
                itemBuilder: (context, index) => MyCardComponnent(
                  value: valueList[index],
                  color: index % 2 == 0
                      ? AppColors.primaryColor
                      : AppColors.gaugeColor,
                  text: textList[index],
                  textVal: textVal[index],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
                bottom: 120.h,
                left: 15.w,
                right: 15.w,
              ),
              child: Card(
                elevation: 10,
                shadowColor: AppColors.cardShadowColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20.h,
                    bottom: 20.h,
                    left: 8.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              '12K',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: AppFontSize.s18,
                                  ),
                            ),
                            SizedBox(
                              height: AppConstants.getheight(context) * 0.002,
                            ),
                            Text(
                              AppString.visitors,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: AppColors.cardTextTitleColor,
                                    fontSize: AppFontSize.s16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Container(
                          width: 1.w,
                          height: 40.h,
                          color: AppColors.cardDividerColor,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              '2.500',
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                    color: AppColors.blackColor,
                                    fontSize: AppFontSize.s18,
                                  ),
                            ),
                            SizedBox(
                              height: AppConstants.getheight(context) * 0.001,
                            ),
                            Text(
                              AppString.newCustomers,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    color: AppColors.cardTextTitleColor,
                                    fontSize: AppFontSize.s16,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchComponnent extends StatelessWidget {
  const SearchComponnent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 15.h,
        bottom: 20.h,
      ),
      child: SizedBox(
        height: AppConstants.getheight(context) * 0.055,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 8.w,
              vertical: 7.h,
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 8.h,
              ),
              child: SvgPicture.asset(AppIconAssets.iconsMagnifyingglass),
            ),
            hintText: AppString.searchProduct,
            hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.searchTextColor,
                ),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 8.h,
              ),
              child: SvgPicture.asset(AppIconAssets.iconsMicrophone),
            ),
            fillColor: AppColors.searchFillColor,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: AppColors.searchBorderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.r),
              borderSide: BorderSide(
                color: AppColors.searchBorderColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
