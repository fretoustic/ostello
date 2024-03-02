import '../../../core/app_export.dart';

/// This class is used in the [frame2_item_widget] screen.
class Frame2ItemModel {
  Frame2ItemModel({
    this.referEarn,
    this.price,
    this.referEarn1,
    this.id,
  }) {
    referEarn = referEarn ?? "Refer & Earn";
    price = price ?? "Invite a friend to ostello and earn ₹1000 worth coins.";
    referEarn1 = referEarn1 ?? ImageConstant.imgImage1382;
    id = id ?? "";
  }

  String? referEarn;

  String? price;

  String? referEarn1;

  String? id;
}
