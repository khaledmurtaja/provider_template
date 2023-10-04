import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:provider_template/app/modules/baseView/myAccount/provider.dart';
import 'package:provider_template/utils/helper_functions.dart';
import '../../../../generated/l10n.dart';
import '../../../../utils/assets_paths.dart';
import '../../../../utils/colors.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<MyAccountScreenProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: getMediaQueryHeight(context: context, value: 63),
        backgroundColor: appBarColor,
        elevation: 0,
        title: Text(
          S.of(context).myAccount,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.spMin),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(25.w, 34.h, 0, 17.h),
                    child: Text(
                      S.of(context).myData,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16.spMin,
                          color: const Color(0xff393939)),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(personIcon),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        S.of(context).name,
                        style: TextStyle(
                            fontSize: 16.spMin,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff393939)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(messageIcon),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        "khaedmo@gmail.com",
                        style: TextStyle(
                            fontSize: 16.spMin,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff393939)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(phoneIcon),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        S.of(context).phoneNum,
                        style: TextStyle(
                            fontSize: 16.spMin,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff393939)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(locationIcon),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        S.of(context).city,
                        style: TextStyle(
                            fontSize: 16.spMin,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff393939)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(fileIcon),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        S.of(context).reportNo,
                        style: TextStyle(
                            fontSize: 16.spMin,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff393939)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(height: 8.h, color: const Color(0xffFBFBFB)),
          Expanded(
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(25.w, 33.h, 0, 20.h),
                        child: Text(
                          S.of(context).appLanguage,
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16.spMin),
                        ),
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              prov.onArabicButtonClicked();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27),
                                  color: prov.isArabicLanguageChosen
                                      ? const Color(0xff1C784B)
                                      : const Color(0xffEBEBEB)
                                  // color: const Color(0xff1C784B),
                                  ),
                              width: getMediaQueryWidth(
                                  context: context, value: 155),
                              height: getMediaQueryHeight(
                                  context: context, value: 42),
                              child: Center(
                                child: Text(
                                  "عربي",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.spMin,
                                      color: prov.isArabicLanguageChosen
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff929292)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          InkWell(
                            onTap: () {
                              prov.onDeutschButtonClicked();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(27),
                                  color: !prov.isArabicLanguageChosen
                                      ? const Color(0xff1C784B)
                                      : const Color(0xffEBEBEB)

                                  // color: const Color(0xffEBEBEB),
                                  ),
                              width: getMediaQueryWidth(
                                  context: context, value: 155),
                              height: getMediaQueryHeight(
                                  context: context, value: 42),
                              child: Center(
                                child: Text("Deutsch",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.spMin,
                                        color: !prov.isArabicLanguageChosen
                                            ? const Color(0xffFFFFFF)
                                            : const Color(0xff929292)
                                        // color: const Color(0xff929292)
                                        )),
                              ),
                            ),
                          ),
                          const Spacer()
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: const Color(0xffFBFBFB),
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
