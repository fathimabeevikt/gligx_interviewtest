import 'package:flutter/cupertino.dart';
import 'package:gligx_test/constants/color_constants.dart';

Widget activityBar(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: AppColors.kprimarylightColor,
        ),
        Text(
          text,
          style: const TextStyle(
              fontFamily: "Poppins",
              fontSize: 13,
              color: AppColors.kprimarylightColor),
        )
      ],
    ),
  );
}
