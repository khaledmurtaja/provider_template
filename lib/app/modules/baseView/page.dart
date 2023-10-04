import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/app/modules/baseView/provider.dart';
import 'package:provider_template/utils/helper_functions.dart';
import '../../../generated/l10n.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/colors.dart';
import 'myAccount/provider.dart';

class BaseView extends StatelessWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BaseViewProvider>(
      create: (context) => BaseViewProvider(),
      child: Consumer<BaseViewProvider>(
        builder: (context, provider, widget) {
          return Scaffold(
            appBar: null,
            body: provider.screens[
                Provider.of<MyAccountScreenProvider>(context, listen: false)
                    .currentIndex],
            bottomNavigationBar: SizedBox(
              height: getMediaQueryHeight(context: context, value: 59),
              child: BottomNavigationBar(
                selectedFontSize: 0,
                unselectedFontSize: 0,
                selectedItemColor: greenTextColor,
                selectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.spMin,
                    color: greenTextColor),
                unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10.spMin,
                    color: greyTextColor),
                onTap: (index) {
                  provider.changeCurrentIndex(index, context);
                },
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(clickedHomePageIcon),
                      label: S.of(context).home),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(notification),
                      label: S.of(context).notifications),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(myOrdersIcon),
                      label: S.of(context).myOrders),
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(myAccountIcon),
                      label: S.of(context).myAccount),
                ],
                currentIndex:
                    Provider.of<MyAccountScreenProvider>(context, listen: false)
                        .currentIndex,
              ),
            ),
          );
        },
      ),
    );
  }
}
