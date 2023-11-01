import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/utils/app_icon_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: 25.h),
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    AppIconAssets.iconsGroup44,
                  ),
                  SizedBox(
                    width: width * 0.13,
                  ),
                  Text(
                    AppString.admin,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(AppIconAssets.iconsGrid),
              title: Text(
                AppString.dashboard,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  AppRoutes.dashBoardRoute,
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: SvgPicture.asset(AppIconAssets.iconsCopy),
              title: Text(
                AppString.categories,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, AppRoutes.categoriesRoute);
              },
            ),
            const Divider(),
            ListTile(
              leading: SvgPicture.asset(
                AppIconAssets.iconsShoppingCart,
              ),
              title: Text(
                AppString.products,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, AppRoutes.productsRoute);
              },
            ),
            const Divider(),
            ListTile(
              leading: SvgPicture.asset(
                AppIconAssets.iconsUsers,
              ),
              title: Text(
                AppString.users,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoutes.usersRoute);
              },
            ),
            const Divider(),
            ListTile(
              leading: SvgPicture.asset(
                AppIconAssets.iconsMessageCircle,
              ),
              title: Text(
                AppString.chat,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoutes.chatRoute);
              },
            ),
            const Divider(),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(
                bottom: 25.h,
              ),
              child: ListTile(
                leading: SvgPicture.asset(AppIconAssets.iconsLogOut),
                title: Text(
                  AppString.logOut,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppRoutes.logInAdminRoute, (route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
