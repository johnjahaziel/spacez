import 'package:flutter/material.dart';
import 'package:spacez/presentation/styles/textstyles.dart';
import 'package:spacez/presentation/widgets/appbar.dart';
import 'package:spacez/presentation/widgets/backbutton_widget.dart';
import 'package:spacez/presentation/widgets/bottombar_widget.dart';
import 'package:spacez/presentation/widgets/coupon_card.dart';
import 'package:spacez/presentation/widgets/prebottom_widget.dart';
import 'package:spacez/size_config.dart';

class CouponPage extends StatefulWidget {
  const CouponPage({super.key});

  @override
  State<CouponPage> createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: appBar(context),
        body: Column(
          children: [
            backButton(
              'Coupons',
              context
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    couponcard(
                      context,
                      '₹6,900',
                      'LONGSTAY',
                      '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.'
                    ),
                    couponcard(
                      context,
                      '₹6,900',
                      'LONGSTAY',
                      '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.'
                    ),
                    SizedBox(
                      height: SizeConfig.h(40),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(24)),
                      child: Text(
                        'Payment offers:',
                        style: headingText,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.h(8),
                    ),
                    couponcard(
                      context,
                      '₹6,900',
                      'LONGSTAY',
                      '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.'
                    ),
                    SizedBox(
                      height: SizeConfig.h(8),
                    ),
                  ],
                ),
              ),
            ),
            prebottombar(),
            bottombar(context),
          ],
        ),
      )
    );
  }
}