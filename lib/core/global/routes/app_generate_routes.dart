import 'package:admin_panel_for_store/core/global/routes/app_routes.dart';
import 'package:admin_panel_for_store/core/utils/app_componnent.dart';
import 'package:admin_panel_for_store/screens/add_categ_screen.dart';
import 'package:admin_panel_for_store/screens/add_products_screen.dart';
import 'package:admin_panel_for_store/screens/add_reply_screen.dart';
import 'package:admin_panel_for_store/screens/add_users_screen.dart';
import 'package:admin_panel_for_store/screens/categories_screen.dart';
import 'package:admin_panel_for_store/screens/chat_screen.dart';
import 'package:admin_panel_for_store/screens/chatting_screen.dart';
import 'package:admin_panel_for_store/screens/dash_board_screen.dart';
import 'package:admin_panel_for_store/screens/edit_categories_screen.dart';
import 'package:admin_panel_for_store/screens/log_in_admin_screen.dart';
import 'package:admin_panel_for_store/screens/products_screen.dart';
import 'package:admin_panel_for_store/screens/users_screen.dart';

import 'package:flutter/material.dart';

class AppGenerateRoutes {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      //login
      case AppRoutes.logInAdminRoute:
        return MaterialPageRoute(
          builder: (context) => const LogInAdminScreen(),
        );
      //dashboard
      case AppRoutes.dashBoardRoute:
        return MaterialPageRoute(
          builder: (context) => const DashBoardScreen(),
        );
      case AppRoutes.categoriesRoute:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      case AppRoutes.addcategRoute:
        return MaterialPageRoute(
          builder: (context) => const AddCategoryScreen(),
        );
      case AppRoutes.editcategRoute:
        return MaterialPageRoute(
          builder: (context) => const EditCategoriesScreen(),
        );

      case AppRoutes.productsRoute:
        return MaterialPageRoute(
          builder: (context) => const ProductsScreen(),
        );
      case AppRoutes.addProductRoute:
        return MaterialPageRoute(
          builder: (context) => const AddProductsScreen(),
        );

      case AppRoutes.usersRoute:
        return MaterialPageRoute(
          builder: (context) => const UsersScreen(),
        );
      case AppRoutes.addUsersRoute:
        return MaterialPageRoute(
          builder: (context) => const AddUsersScreen(),
        );
      case AppRoutes.chatRoute:
        return MaterialPageRoute(
          builder: (context) => const ChatScreen(),
        );

      case AppRoutes.replyRoute:
        return MaterialPageRoute(
          builder: (context) => const AddReplayScreen(),
        );
      case AppRoutes.chattingRoute:
        return MaterialPageRoute(
          builder: (context) => const ChattingScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundRoute(),
        );
    }
  }
}
