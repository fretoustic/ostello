import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  FrameItemModel({
    this.careerTrends,
    this.careerTrends1,
    this.careerTrends2,
    this.id,
  }) {
    careerTrends = careerTrends ?? ImageConstant.imgEllipse837;
    careerTrends1 = careerTrends1 ?? "Career Trends";
    careerTrends2 = careerTrends2 ?? ImageConstant.imgChangeColor2;
    id = id ?? "";
  }

  String? careerTrends;

  String? careerTrends1;

  String? careerTrends2;

  String? id;
}
