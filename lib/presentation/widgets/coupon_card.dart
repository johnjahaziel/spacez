import 'package:flutter/material.dart';
import 'package:spacez/presentation/action/button_action.dart';
import 'package:spacez/presentation/styles/colors.dart';
import 'package:spacez/presentation/styles/styled_divider.dart';
import 'package:spacez/presentation/styles/textstyles.dart';
import 'package:spacez/size_config.dart';

Widget couponcard(
  BuildContext context,
  String amount,
  String heading,
  String desc,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(24),vertical: SizeConfig.h(8)),
    child: Column(
      children: [
        Container(
          height: SizeConfig.h(184),
          decoration: BoxDecoration(
            color: couponbox_bg
          ),
          child: Row(
            children: [
              Container(
                width: SizeConfig.w(68),
                color: coupon_insidebox_bg,
                alignment: Alignment.center,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    amount,
                    style: box_amount_textstyle,
                  ),
                ),
              ),
              StyledVerticalDivider(
                height: double.infinity,
                color: coupon_insidebox_bg,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: SizeConfig.w(20), right: SizeConfig.w(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.h(20)),
                        child: SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                heading,
                                style: coupon_heading,
                                overflow: TextOverflow.ellipsis,
                              ),
                      
                              RawMaterialButton(
                                onPressed: () {
                                  buttonMsg(context);
                                },
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                padding: EdgeInsets.symmetric(horizontal: SizeConfig.w(5),vertical: SizeConfig.h(5)),
                                constraints: const BoxConstraints(),
                                child: Row(
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Icon(
                                        Icons.local_offer_outlined,
                                        color: coupon_apply_color,
                                        size: 18,
                                      ),
                                    ),
                                    SizedBox(width: SizeConfig.w(6)),
                                    Text(
                                      'Apply',
                                      style: coupon_apply_button,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: SizeConfig.h(10)),
                      Expanded(
                        child: Text(
                          desc,
                          style: coupon_desc_textstyle,
                        ),
                      ),
                      SizedBox(height: SizeConfig.h(10)),
                      SizedBox(
                        height: 1,
                        child: Divider(),
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          buttonMsg(context);
                        },
                        child: Text(
                          'Read more',
                          style: coupon_readmore,
                        ),
                      ),
                      SizedBox(height: SizeConfig.h(5)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}