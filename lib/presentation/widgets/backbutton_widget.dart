import 'package:flutter/material.dart';
import 'package:spacez/presentation/action/button_action.dart';
import 'package:spacez/presentation/styles/colors.dart';
import 'package:spacez/presentation/styles/textstyles.dart';
import 'package:spacez/size_config.dart';

Widget backButton(
  String title,
  BuildContext context
) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: kshadowColor,
          offset: Offset(0, 2),
          blurRadius: 4
        )
      ]
    ),
    child: RawMaterialButton(
      onPressed: () {
        buttonMsg(context);
      },
      constraints: BoxConstraints.tightFor(
        height: SizeConfig.h(68),
        width: double.infinity,
      ),
      elevation: 0,
      fillColor: kwhite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(24)),
        child: Row(
          children: [
            Icon(
              Icons.keyboard_backspace_rounded,
              color: kbackButtonColor,
            ),
            SizedBox(width: SizeConfig.w(16)),
            Text(
              title,
              style: backButtonText
            )
          ],
        ),
      ),
    ),
  );
}