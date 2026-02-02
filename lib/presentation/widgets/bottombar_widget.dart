import 'package:flutter/material.dart';
import 'package:spacez/presentation/action/button_action.dart';
import 'package:spacez/presentation/styles/colors.dart';
import 'package:spacez/presentation/styles/textstyles.dart';
import 'package:spacez/size_config.dart';

Widget bottombar(
  BuildContext context
) {
  return Container(
    color: kwhite,
    height: SizeConfig.h(74),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: SizeConfig.h(48),
            width: SizeConfig.w(200),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹ 19,500',
                        style: bottombar_linethrough_text,
                      ),
                      SizedBox(width: SizeConfig.w(6)),
                      Text(
                        '₹16,000',
                        style: bottombar_text,
                      ),
                      SizedBox(width: SizeConfig.w(2)),
                      Text(
                        'for 2 nights',
                        style: bottombar_days_text,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '24 Apr - 26 Apr | 8 guests',
                        style: bottombar_under_text,
                      ),
                      SizedBox(width: SizeConfig.w(4)),
                      Material(
                        color: kwhite,
                        elevation: 0,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(8),
                          onTap: () {
                            buttonMsg(context);
                          },
                          child: Image.asset(
                            'images/edit.png',
                            height: SizeConfig.h(15),
                            width: SizeConfig.h(15),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: SizeConfig.w(4)),
          RawMaterialButton(
            onPressed: () {
              buttonMsg(context);
            },
            fillColor: kbottombar_button,
            constraints: BoxConstraints.tightFor(
              height: SizeConfig.h(40)
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(2)
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(29.5)),
              child: Text(
                'Reserve',
                style: bottombar_button_textstyle,
              ),
            ),
          )
        ],
      ),
    ),
  );
}