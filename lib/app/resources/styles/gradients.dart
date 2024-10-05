import 'package:flutter/material.dart';
import '../extentions/hex_color.dart';
import 'color_manager.dart';


class MyGradients {
  static Gradient grey = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [ColorManager.greyB9B9B9,ColorManager.greyB9B9B9],
  );

  static Gradient defaultGradient = LinearGradient(colors: [
    ColorManager.primaryPurple522B79,
    ColorManager.primaryRedED3284
  ]);


  static Gradient homeGridItemGradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xfffef5f9), Colors.white],
  );

  static Gradient createAccount = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [HexColor.fromHex('#00C875'), HexColor.fromHex('#00C875')],
  );

  static Gradient blankBackground = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [HexColor.fromHex('#00C875'), HexColor.fromHex('#00C875')],
  );


  static Gradient containerButtonGradient = LinearGradient(
    begin: const Alignment(1.00, 0.00),
    end: const Alignment(-1, 0),
    colors: [ColorManager.primaryPurple522B79,ColorManager.primaryPurpleED3284 ],
  );

}
