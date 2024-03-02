import 'package:harsh_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:harsh_s_application1/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:harsh_s_application1/widgets/custom_elevated_button.dart';
import 'widgets/frame_item_widget.dart';
import 'models/frame_item_model.dart';
import 'package:harsh_s_application1/widgets/custom_outlined_button.dart';
import 'widgets/frame1_item_widget.dart';
import 'models/frame1_item_model.dart';
import 'widgets/frame2_item_widget.dart';
import 'models/frame2_item_model.dart';
import 'widgets/frame3_item_widget.dart';
import 'models/frame3_item_model.dart';
import 'package:harsh_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';
import 'notifier/home_notifier.dart';

// ignore_for_file: must_be_immutable
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 28.v),
              child: Column(
                children: [
                  _buildFrame(context),
                  SizedBox(height: 34.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Top Services",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildFrame1(context),
                  SizedBox(height: 16.v),
                  _buildFrame2(context),
                  SizedBox(height: 32.v),
                  _buildReferEarn(context),
                  SizedBox(height: 33.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Market Place",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildFrame3(context),
                  SizedBox(height: 32.v),
                  _buildFrame4(context),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Quick Info",
                        style: CustomTextStyles.titleMedium18,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildFrame5(context),
                  SizedBox(height: 32.v),
                  _buildFrame7(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "Hi Rajbir",
              margin: EdgeInsets.only(right: 100.h),
            ),
            Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgSearch,
                ),
                AppbarSubtitle(
                  text: "Gandhi Nagar",
                  margin: EdgeInsets.only(left: 2.h),
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowDown,
          margin: EdgeInsets.only(

            right: 10.h,
          ),
        ),
        Container(
          height: 32.v,
          width: 89.h,
          margin: EdgeInsets.fromLTRB(25.h, 16.v, 28.h, 4.v),
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgImg,
                margin: EdgeInsets.only(left: 57.h),
              ),
            ],
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }
  Widget _buildStartAssessment(BuildContext context) {
    return CustomElevatedButton(
      text: "Start Assessment",
    );
  }
  Widget _buildFrame(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Container(
        height: 446.v,
        width: 328.h,
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder16,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  right: 24.h,
                  bottom: 24.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 60.v,
                      width: 267.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 23.v,
                              width: 180.h,
                              margin: EdgeInsets.only(
                                left: 70.h,
                                bottom: 4.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.yellowA700,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 267.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "No guessing, just knowing  your",
                                      style: CustomTextStyles.titleLargeffffffff
                                          .copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Career Path Awaits",
                                      style:
                                          CustomTextStyles.titleLargeff7d23e0,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Container(
                      width: 252.h,
                      margin: EdgeInsets.only(
                        left: 14.h,
                        right: 13.h,
                      ),
                      child: Text(
                        "Unlock Your potential",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallPrimary.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildStartAssessment(context),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 11.v,
                width: 168.h,
                margin: EdgeInsets.only(bottom: 197.v),
                decoration: BoxDecoration(
                  color: appTheme.black900,
                  borderRadius: BorderRadius.circular(
                    84.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgHqaa11,
              height: 290.v,
              width: 328.h,
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 137.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 17.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.frameItemList.length ?? 0,
            itemBuilder: (context, index) {
              FrameItemModel model =
                  ref.watch(homeNotifier).homeModelObj?.frameItemList[index] ??
                      FrameItemModel();
              return FrameItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateNow(BuildContext context) {
    return CustomOutlinedButton(
      width: 123.h,
      text: "Create Now",
      buttonStyle: CustomButtonStyles.outlineOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Container(
        height: 126.v,
        width: 328.h,
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder16,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 80.v,
                width: 100.h,
                decoration: BoxDecoration(
                  color: appTheme.deepPurple5001,
                  borderRadius: BorderRadius.circular(
                    50.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.fromLTRB(16.h, 15.v, 23.h, 15.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your Career RoadMap",
                          style: CustomTextStyles.titleSmallBlack900,
                        ),
                        SizedBox(height: 2.v),
                        SizedBox(
                          width: 168.h,
                          child: Text(
                            "Those who plan ahead hold the key to the future",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.50,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildCreateNow(context),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1375,
                      height: 90.adaptSize,
                      width: 90.adaptSize,
                      margin: EdgeInsets.only(bottom: 5.v),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildReferEarn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Refer & Earn",
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 151.h,
                  child: Text(
                    "Invite a friend to ostello and earn 1000 worth coins",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        CustomTextStyles.labelLargeOnPrimaryContainer.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgColor1,
            height: 99.adaptSize,
            width: 99.adaptSize,
          ),
        ],
      ),
    );
  }
  Widget _buildFrame3(BuildContext context) {
    return SizedBox(
      height: 200.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.frame1ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Frame1ItemModel model =
                  ref.watch(homeNotifier).homeModelObj?.frame1ItemList[index] ??
                      Frame1ItemModel();
              return Frame1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return SizedBox(
      height: 99.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.frame2ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Frame2ItemModel model =
                  ref.watch(homeNotifier).homeModelObj?.frame2ItemList[index] ??
                      Frame2ItemModel();
              return Frame2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return SizedBox(
      height: 295.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount:
                ref.watch(homeNotifier).homeModelObj?.frame3ItemList.length ??
                    0,
            itemBuilder: (context, index) {
              Frame3ItemModel model =
                  ref.watch(homeNotifier).homeModelObj?.frame3ItemList[index] ??
                      Frame3ItemModel();
              return Frame3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame6(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(homeNotifier).frameController,
          hintText: "9k+ students are using the platform to upgrade their career",
          textInputAction: TextInputAction.done,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame7(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray10001,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.circleBorder16,
      ),
      child: Container(
        height: 200.v,
        width: 328.h,
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder16,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSaly43,
              height: 196.v,
              width: 153.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 171.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Guiding you through the maze of choices!",
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.headlineLarge!.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildFrame6(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
