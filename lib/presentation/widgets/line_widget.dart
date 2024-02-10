import 'package:flutter/material.dart';

import '../../const/colors.dart';

class Line extends StatelessWidget {
  final int height;
  const Line({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return //container
        Container(
      height: height.toDouble(),
      width: MediaQuery.of(context).size.width,
      color: FisaColor.secondaryColor,
    );
  }
}
