import 'package:flutter/material.dart';
import 'package:spacez/presentation/styles/colors.dart';
import 'package:spacez/presentation/styles/textstyles.dart';
import 'package:spacez/size_config.dart';

Widget prebottombar() {
  return Container(
    color: kprebottom_bg,
    height: SizeConfig.h(28),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.h(4)),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              'images/offer_icon.png'
            )
          ),
          SizedBox(width: SizeConfig.w(8)),
          Text(
            'Book now & Unlock exclusive rewards!',
            style: prebottombar_textstyle,
          )
        ],
      ),
    ),
  );
}