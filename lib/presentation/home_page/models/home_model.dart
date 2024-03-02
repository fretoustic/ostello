// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'frame1_item_model.dart';
import 'frame2_item_model.dart';
import 'frame3_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.frameItemList = const [],
    this.frame1ItemList = const [],
    this.frame2ItemList = const [],
    this.frame3ItemList = const [],
  }) {}

  List<FrameItemModel> frameItemList;

  List<Frame1ItemModel> frame1ItemList;

  List<Frame2ItemModel> frame2ItemList;

  List<Frame3ItemModel> frame3ItemList;

  HomeModel copyWith({
    List<FrameItemModel>? frameItemList,
    List<Frame1ItemModel>? frame1ItemList,
    List<Frame2ItemModel>? frame2ItemList,
    List<Frame3ItemModel>? frame3ItemList,
  }) {
    return HomeModel(
      frameItemList: frameItemList ?? this.frameItemList,
      frame1ItemList: frame1ItemList ?? this.frame1ItemList,
      frame2ItemList: frame2ItemList ?? this.frame2ItemList,
      frame3ItemList: frame3ItemList ?? this.frame3ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [frameItemList, frame1ItemList, frame2ItemList, frame3ItemList];
}
