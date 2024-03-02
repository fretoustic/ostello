import '../models/frame1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';

class Frame1ItemWidget extends StatelessWidget {
  Frame1ItemWidget(
    this.frame1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame1ItemModel frame1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      width: 200.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: AppDecoration.outlineDeeppurple50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20.h, 8.v, 19.h, 8.v),
                  decoration: AppDecoration.outlineDeeppurple501,
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: frame1ItemModelObj?.verifiedCoaching,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                      SizedBox(height: 8.v),
                      SizedBox(
                        width: 60.h,
                        child: Text(
                          frame1ItemModelObj.verifiedCoaching1!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(26.h, 8.v, 27.h, 8.v),
                  decoration: AppDecoration.outlineDeeppurple502,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: frame1ItemModelObj?.lowestPrices,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 44.h,
                        child: Text(
                          frame1ItemModelObj.lowestPrices1!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: AppDecoration.outlineDeeppurple503,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10.h, 8.v, 9.h, 8.v),
                  decoration: AppDecoration.outlineDeeppurple501,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: frame1ItemModelObj?.freeCareerCheck,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 6.v),
                      SizedBox(
                        width: 75.h,
                        child: Text(
                          frame1ItemModelObj.freeCareerCheck1!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 3.v),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(19.h, 8.v, 20.h, 8.v),
                  decoration: AppDecoration.outlineDeeppurple502,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: frame1ItemModelObj?.progressTracking,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 7.v),
                      SizedBox(
                        width: 55.h,
                        child: Text(
                          frame1ItemModelObj.progressTracking1!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
