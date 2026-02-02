import 'package:flutter/material.dart';
import 'package:spacez/presentation/action/button_action.dart';
import 'package:spacez/presentation/styles/colors.dart';
import 'package:spacez/size_config.dart';

PreferredSizeWidget appBar(
  BuildContext context
) {
  return AppBar(
    toolbarHeight: SizeConfig.h(56),
    backgroundColor: Colors.white,
    elevation: 0,

    leadingWidth: SizeConfig.w(144),
    leading: Padding(
      padding: EdgeInsets.only(left: SizeConfig.w(24)),
      child: Image.asset(
        'images/logo.png',
        height: SizeConfig.h(28),
        fit: BoxFit.contain,
      ),
    ),

    actions: [
      Padding(
        padding: EdgeInsets.only(right: SizeConfig.w(24)),
        child: IconButton(
          icon: Icon(Icons.menu, color: kbrown),
          onPressed: () {
            buttonMsg(context);
          },
        ),
      ),
    ],

    bottom: const PreferredSize(
      preferredSize: Size.fromHeight(1),
      child: Divider(height: 1, thickness: 1),
    ),
  );
}
