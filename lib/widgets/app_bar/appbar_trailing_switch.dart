import 'package:harsh_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:harsh_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTrailingSwitch extends StatelessWidget {
  AppbarTrailingSwitch({
    Key? key,
    required this.value,
    required this.onTap,
    this.margin,
  }) : super(
          key: key,
        );

  bool value;

  Function(bool?) onTap;

  EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: CustomSwitch(
        value: value,
        onChange: (value) {
          onTap(value);
        },
      ),
    );
  }
}
