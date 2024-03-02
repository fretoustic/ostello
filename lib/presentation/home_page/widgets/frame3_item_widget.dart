import '../models/frame3_item_model.dart';
import 'package:harsh_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Frame3ItemWidget extends StatelessWidget {
  Frame3ItemWidget(
    this.frame3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame3ItemModel frame3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 291.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.circleBorder16,
        ),
        child: Container(
          height: 295.v,
          width: 291.h,
          decoration: AppDecoration.fillGray50.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder16,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage1377,
                height: 173.v,
                width: 136.h,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 23.v,
                    right: 15.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        frame3ItemModelObj.careerTrends!,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 10.v),
                      Container(
                        width: 249.h,
                        margin: EdgeInsets.only(right: 9.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_those_who_plan_ahead3".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: "msg_those_who_plan_ahead4".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 22.v),
                      _buildExploreNow(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildExploreNow(BuildContext context) {
    return CustomOutlinedButton(
      height: 35.v,
      text: "lbl_explore_now".tr,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
    );
  }
}
