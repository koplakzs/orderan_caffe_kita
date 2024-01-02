import 'package:caffe_kita/utils/fonts.dart';
import 'package:flutter/material.dart';

class TextStyling {
  static TextStyle base({
    Color? color,
    FontWeight? fontWeight,
    double? fontSize,
    String? fontFamily,
    bool? shadow = false,
    bool? underline = false,
  }) {
    return TextStyle(
      color: color ?? const Color(0xff000000),
      fontFamily: fontFamily ?? Fonts.jacquesFrancoisRegular,
      fontSize: fontSize ?? 13,
      fontWeight: fontWeight ?? FontWeight.w400,
      shadows: shadow!
          ? const [
              Shadow(
                blurRadius: 4,
                color: Colors.black,
                offset: Offset(0, 0.5),
              ),
            ]
          : [],
      decoration: underline! ? TextDecoration.underline : TextDecoration.none,
    );
  }
}
