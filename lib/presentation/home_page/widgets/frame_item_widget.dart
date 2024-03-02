import '../models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  FrameItemWidget(
    this.frameItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FrameItemModel frameItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Container(
          height: 137.v,
          width: 157.h,
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder20,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              CustomImageView(
                imagePath: frameItemModelObj?.careerTrends,
                height: 63.v,
                width: 58.h,
                alignment: Alignment.topLeft,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 87.v,
                  width: 108.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      54.h,
                    ),
                    border: Border.all(
                      color: appTheme.deepPurple10060,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    bottom: 15.v,
                  ),
                  child: Text(
                    frameItemModelObj.careerTrends1!,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: frameItemModelObj?.careerTrends2,
                height: 73.v,
                width: 91.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 18.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
