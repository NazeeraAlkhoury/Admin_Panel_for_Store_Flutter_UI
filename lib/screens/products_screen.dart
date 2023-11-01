import 'package:admin_panel_for_store/core/global/localization/app_string.dart';
import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/core/utils/app_model.dart';
import 'package:admin_panel_for_store/screens/menue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<ItemModel> itemList = const [
    ItemModel(title1: 'A', title2: AppString.bags),
    ItemModel(title1: 'B', title2: AppString.rings),
    ItemModel(title1: 'C', title2: 'acc'),
    ItemModel(title1: 'D', title2: AppString.bags),
    ItemModel(title1: 'E', title2: AppString.bags),
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
              text: AppString.products,
              routeName: AppRoutes.addProductRoute,
            ),
            const Divider(),
            const NavBarComponnent(
              title1: AppString.select,
              title2: AppString.name,
              title3: AppString.categories,
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
