import 'package:harsh_s_application1/presentation/home_page/home_page.dart';
import 'package:harsh_s_application1/widgets/custom_bottom_app_bar.dart';
import 'package:harsh_s_application1/widgets/custom_floating_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';
import 'notifier/home_container_notifier.dart';

class HomeContainerScreen extends ConsumerStatefulWidget {
  const HomeContainerScreen({Key? key}) : super(key: key);

  @override
  HomeContainerScreenState createState() => HomeContainerScreenState();
}
class HomeContainerScreenState extends ConsumerState<HomeContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildNavBarHome(context),
            floatingActionButton: OutlineGradientButton(
                padding: EdgeInsets.only(
                    left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                strokeWidth: 1.h,
                gradient: LinearGradient(
                    begin: Alignment(0.47, 0),
                    end: Alignment(0.5, 0.59),
                    colors: [
                      appTheme.purple300,
                      theme.colorScheme.secondaryContainer,
                      appTheme.purple50
                    ]),
                corners: Corners(
                    topLeft: Radius.circular(27),
                    topRight: Radius.circular(27),
                    bottomLeft: Radius.circular(27),
                    bottomRight: Radius.circular(27)),
                child: CustomFloatingButton(
                    height: 54,
                    width: 54,
                    backgroundColor: theme.colorScheme.primary,
                    child: CustomImageView(imagePath: ImageConstant.imgAi))),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked));
  }

  /// Section Widget
  Widget _buildNavBarHome(BuildContext context) {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Marketplace:
        return AppRoutes.homePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
