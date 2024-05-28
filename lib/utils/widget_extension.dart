import 'package:flutter/material.dart';
import 'colors.dart';


extension CustomExtensions on Widget {
  Center wrapCenter() => Center(child: this);

  Padding paddingForAll(double value) => Padding(
    padding: EdgeInsets.all(value),
    child: this,
  );

  Padding paddingWithSymmetry(
      {double vertical = 0.0, double horizontal = 0.0}) =>
      Padding(
        padding:
        EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
        child: this,
      );

  Padding paddingLTRB(double left, double top, double right, double bottom) =>
      Padding(
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );

  Padding paddingForOnly(
      {double left = 0.0,
        double right = 0.0,
        double top = 0.0,
        double bottom = 0.0}) =>
      Padding(
        padding:
        EdgeInsets.only(left: left, right: right, bottom: bottom, top: top),
        child: this,
      );

  Expanded expanded({required int flex}) => Expanded(flex: flex, child: this);

  Container forBackgroundColor({Color? color}) => Container(
    color: color,
    child: this,
  );

  Container withShadow({required double radius, Color? color}) => Container(
    decoration: BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(radius),
    ),
    child: this,
  );

  Widget asButton({
    void Function()? onTap,
    void Function()? onLongPress,
    bool clickable = true,
  }) =>
      clickable
          ? InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: this,
      )
          : this;

  GestureDetector asStaticButton({
    void Function()? onTap,
    void Function()? onLongPress,
  }) =>
      GestureDetector(
        onTap: onTap,
        onLongPress: onLongPress,
        child: this,
      );

  Material asCircleButton({required VoidCallback onTap}) => Material(
    shape: const CircleBorder(),
    child: InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: this,
    ),
  );

  /// default thickness is 1
  Widget addDivider({
    bool divider = true,
    Color? color,
    double? thickness,
    double space = 0,
  }) {
    if (divider) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
                width: thickness ?? 1,
                color: color ?? CustomColors.backgroundColor),
          ),
        ),
        child: paddingForOnly(bottom: space),
      );
    }
    return this;
  }

  Widget addSubScript(Widget widget, {MainAxisAlignment? mainAxisAlignment}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        this,
        widget,
      ],
    );
  }
}



  Text _copyWith(String data, {TextStyle? textStyle}) {
    return Text(
      data,
      style: textStyle,
    );
  }