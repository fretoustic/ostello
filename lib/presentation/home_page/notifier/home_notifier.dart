import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/frame_item_model.dart';
import '../models/frame1_item_model.dart';
import '../models/frame2_item_model.dart';
import '../models/frame3_item_model.dart';
import 'package:harsh_s_application1/presentation/home_page/models/home_model.dart';
part 'home_state.dart';

final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>(
  (ref) => HomeNotifier(HomeState(
    frameController: TextEditingController(),
    isSelectedSwitch: false,
    homeModelObj: HomeModel(frameItemList: [
      FrameItemModel(
          careerTrends: ImageConstant.imgEllipse837,
          careerTrends1: "Career Trends",
          careerTrends2: ImageConstant.imgChangeColor2),
      FrameItemModel(
          careerTrends1: "Scholarships",
          careerTrends2: ImageConstant.imgAsset71)
    ], frame1ItemList: [
      Frame1ItemModel(
          verifiedCoaching: ImageConstant.imgVerified11,
          verifiedCoaching1: "Verified \nCoaching",
          lowestPrices: ImageConstant.imgSaveMoney,
          lowestPrices1: "Lowest\nPrices ",
          freeCareerCheck: ImageConstant.imgFrame1410102769,
          freeCareerCheck1: "Free Career \nCheck",
          progressTracking: ImageConstant.imgLineChart1,
          progressTracking1: "Progress \nTracking")
    ], frame2ItemList: [
      Frame2ItemModel(
          referEarn: "Refer & Earn",
          price: "Invite a friend to ostello and earn ₹1000 worth coins.",
          referEarn1: ImageConstant.imgImage1382),
      Frame2ItemModel(
          referEarn: "Refer & Earn",
          price: "Invite a friend to ostello and earn ₹1000 worth coins.")
    ], frame3ItemList: [
      Frame3ItemModel(careerTrends: "Career Trends"),
      Frame3ItemModel(careerTrends: "Career Trends"),
      Frame3ItemModel(careerTrends: "Career Trends")
    ]),
  )),
);

/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier(HomeState state) : super(state) {}

  void changeSwitchBox1(bool value) {
    state = state.copyWith(isSelectedSwitch: value);
  }
}
