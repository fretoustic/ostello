import '../../../core/app_export.dart';

/// This class is used in the [frame3_item_widget] screen.
class Frame3ItemModel {
  Frame3ItemModel({
    this.careerTrends,
    this.id,
  }) {
    careerTrends = careerTrends ?? "Career Trends";
    id = id ?? "";
  }

  String? careerTrends;

  String? id;
}
