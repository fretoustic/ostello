import '../../../core/app_export.dart';

class Frame1ItemModel {
  Frame1ItemModel({
    this.verifiedCoaching,
    this.verifiedCoaching1,
    this.lowestPrices,
    this.lowestPrices1,
    this.freeCareerCheck,
    this.freeCareerCheck1,
    this.progressTracking,
    this.progressTracking1,
    this.id,
  }) {
    verifiedCoaching = verifiedCoaching ?? ImageConstant.imgVerified11;
    verifiedCoaching1 = verifiedCoaching1 ?? "Verified \nCoaching";
    lowestPrices = lowestPrices ?? ImageConstant.imgSaveMoney;
    lowestPrices1 = lowestPrices1 ?? "Lowest\nPrices";
    freeCareerCheck = freeCareerCheck ?? ImageConstant.imgFrame1410102769;
    freeCareerCheck1 = freeCareerCheck1 ?? "Free Career \nCheck";
    progressTracking = progressTracking ?? ImageConstant.imgLineChart1;
    progressTracking1 = progressTracking1 ?? "Progress \nTracking";
    id = id ?? "";
  }

  String? verifiedCoaching;

  String? verifiedCoaching1;

  String? lowestPrices;

  String? lowestPrices1;

  String? freeCareerCheck;

  String? freeCareerCheck1;

  String? progressTracking;

  String? progressTracking1;

  String? id;
}
