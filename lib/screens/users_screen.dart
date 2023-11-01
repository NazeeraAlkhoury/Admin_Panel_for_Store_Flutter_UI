import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_model.dart';
import 'package:admin_panel_for_store/screens/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<ItemModel> itemList = const [
    ItemModel(title1: AppString.admin, title2: AppString.admin),
    ItemModel(title1: 'Nazeera', title2: AppString.normal),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBarComponnent(scafKey: scaffoldKey),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const RwoAddComponnetnt(
              text: AppString.users,
              routeName: AppRoutes.addUsersRoute,
            ),
            const Divider(),
            const NavBarComponnent(
              title1: AppString.select,
              title2: AppString.username,
              title3: AppString.privilege,
              title4: AppString.view,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: const Divider(),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: itemList.length,
                itemBuilder: (context, index) => MyItemComponnent(
                  itemModel: itemList[index],
                ),
              ),
            ),
            const Spacer(),
            const Divider(),
            const IndexPageComponnent(),
          ],
        ),
      ),
    );
  }
}
