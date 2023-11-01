import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/themes/app_light_theme/app_light_colors.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_constants.dart';
import 'package:admin_panel_for_store/screens/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddUsersScreen extends StatefulWidget {
  const AddUsersScreen({super.key});

  @override
  State<AddUsersScreen> createState() => _AddUsersScreenState();
}

class _AddUsersScreenState extends State<AddUsersScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var userNameController = TextEditingController();
  var emailAddressController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var phoneController = TextEditingController();
  var permessionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBarComponnent(scafKey: _scaffoldKey),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          children: [
            Text(
              AppString.addUsers,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: AppColors.tertiaryColor,
                  ),
            ),
            const Divider(),
            SizedBox(
              height: AppConstants.getheight(context) * 0.024,
            ),
            Row(
              children: [
                SizedBox(
                  width: AppConstants.getwidth(context) * 0.64,
                  height: AppConstants.getheight(context) * 0.06,
                  child: TextFormFieldComponent(
                    controller: emailAddressController,
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                    text: AppString.emailAddress,
                  ),
                ),
                const Spacer(),
                const SwitchComponnent(),
              ],
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.01,
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.06,
              child: TextFormFieldComponent(
                controller: emailAddressController,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.name,
                text: AppString.username,
              ),
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.01,
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.06,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldComponent(
                      controller: passwordController,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.visiblePassword,
                      text: AppString.password,
                    ),
                  ),
                  SizedBox(
                    width: AppConstants.getwidth(context) * 0.005,
                  ),
                  Expanded(
                    child: TextFormFieldComponent(
                      controller: confirmPasswordController,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.visiblePassword,
                      text: AppString.confirmpassword,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.01,
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.06,
              child: Row(
                children: [
                  Expanded(
                    child: TextFormFieldComponent(
                      controller: phoneController,
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.phone,
                      text: AppString.mobile,
                    ),
                  ),
                  SizedBox(
                    width: AppConstants.getwidth(context) * 0.005,
                  ),
                  Expanded(
                    child: TextFormFieldComponent(
                      controller: permessionController,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                      text: AppString.permissions,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppConstants.getheight(context) * 0.01,
            ),
            const ImageFieldComponnent(),
            SizedBox(
              height: AppConstants.getheight(context) * 0.03,
            ),
            const MultiButtonComponnemet(),
          ],
        ),
      ),
    );
  }
}
