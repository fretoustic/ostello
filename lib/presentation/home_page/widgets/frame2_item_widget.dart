import '../models/frame2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame2ItemWidget extends StatelessWidget {
  Frame2ItemWidget(
    this.frame2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame2ItemModel frame2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      width: 312.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  frame2ItemModelObj.referEarn!,
                  style: CustomTextStyles.titleMediumGray200,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 151.h,
                  child: Text(
                    frame2ItemModelObj.price!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: frame2ItemModelObj?.referEarn1,
            height: 80.adaptSize,
            width: 80.adaptSize,
            margin: EdgeInsets.only(left: 48.h),
          ),
        ],
      ),
    );
  }
}
