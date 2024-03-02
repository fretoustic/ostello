// ignore_for_file: must_be_immutable

part of 'home_notifier.dart';

/// Represents the state of Home in the application.
class HomeState extends Equatable {
  HomeState({
    this.frameController,
    this.isSelectedSwitch = false,
    this.homeModelObj,
  });

  TextEditingController? frameController;

  HomeModel? homeModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        frameController,
        isSelectedSwitch,
        homeModelObj,
      ];

  HomeState copyWith({
    TextEditingController? frameController,
    bool? isSelectedSwitch,
    HomeModel? homeModelObj,
  }) {
    return HomeState(
      frameController: frameController ?? this.frameController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      homeModelObj: homeModelObj ?? this.homeModelObj,
    );
  }
}
