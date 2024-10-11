
/*
this widget is used for gradient style text
Parameter:
- gradient
- style
*/
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(this.text, {super.key, required this.gradient, this.style,  this.textAlignment});

  final String text;
  final TextStyle? style;
  final Gradient gradient;
  final TextAlign? textAlignment;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style,textAlign:textAlignment ?? TextAlign.left),
    );
  }
}
