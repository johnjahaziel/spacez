// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:spacez/presentation/styles/colors.dart';
import 'package:spacez/size_config.dart';

double get fs12 => SizeConfig.sp(12);
double get fs14 => SizeConfig.sp(14);
double get fs16 => SizeConfig.sp(16);
double get fs18 => SizeConfig.sp(18);
double get fs20 => SizeConfig.sp(20);
double get fs32 => SizeConfig.sp(32);

// ---- Home Page ----

TextStyle headingText = TextStyle(
  fontSize : fs16,
  fontWeight: FontWeight.w500,
  color: couponbox_text
);

// ---- Back Button Text Style ----

TextStyle backButtonText = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: fs20,
  color: kbackButtonColor
);

// ---- Coupon Box Text Style ----

TextStyle box_amount_textstyle = TextStyle(
  fontFamily: 'LibreCaslon',
  color: kwhite,
  fontSize: fs32,
  fontWeight: FontWeight.bold,
);

TextStyle coupon_desc_textstyle = TextStyle(
  fontSize: fs14,
  fontWeight: FontWeight.w300,
  color: coupon_desc
);

TextStyle coupon_readmore = TextStyle(
  fontSize: fs14,
  fontWeight: FontWeight.w600,
  color: coupon_desc
);

TextStyle coupon_apply_button = TextStyle(
  color: coupon_apply_color,
  fontSize: fs16,
  fontWeight: FontWeight.w500,
);

TextStyle coupon_heading = TextStyle(
  fontSize: fs18,
  fontWeight: FontWeight.w600,
  color: couponbox_text,
);

// ---- Bottom Box Text Style ----

TextStyle bottombar_button_textstyle = TextStyle(
  fontSize: fs16,
  color: kbottombar_button_text
);

TextStyle bottombar_linethrough_text = TextStyle(
  fontFamily: 'Figtree',
  fontSize: fs12,
  color: kbottombar_linethrough_text,
  decoration: TextDecoration.lineThrough,
  decorationColor: kbottombar_linethrough_text
);

TextStyle bottombar_text = TextStyle(
  fontFamily: 'Figtree',
  fontSize: fs18,
  fontWeight: FontWeight.w700,
  color: kbottombar_text,
);

TextStyle bottombar_days_text = TextStyle(
  color: kbottombar_days_textColor,
  fontSize: fs14,
  fontWeight: FontWeight.w300
);

TextStyle bottombar_under_text = TextStyle(
  fontWeight: FontWeight.w300,
  fontSize: fs12,
  color: kbottombar_text,
  decoration: TextDecoration.underline,
  decorationColor: kbottombar_text
);

// ---- Pre Bottom Box Text Style ----

TextStyle prebottombar_textstyle = TextStyle(
  fontSize: fs14,
  color: kprebottom_text,
  fontWeight: FontWeight.w300
);