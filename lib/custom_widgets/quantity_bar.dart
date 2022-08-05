import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

Widget quantityBar() {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
            color: AppColors.kprimarylightbackgroundColor,
            borderRadius: BorderRadius.circular(5)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.shopping_bag),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: const Center(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("5"),
          )),
        ),
      ),
      Container(
        decoration: BoxDecoration(
            color: AppColors.kprimarylightbackgroundColor,
            borderRadius: BorderRadius.circular(5)),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.shopping_bag),
        ),
      ),
    ],
  );
}
