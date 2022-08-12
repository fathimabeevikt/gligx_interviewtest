import 'package:flutter/material.dart';
import 'package:gligx_test/constants/color_constants.dart';

import 'activity_bar.dart';
import 'color_palet.dart';

class TrendingCard extends StatefulWidget {
  const TrendingCard({Key? key}) : super(key: key);

  @override
  State<TrendingCard> createState() => _TrendingCardState();
}

class _TrendingCardState extends State<TrendingCard> {
  Color selectedColor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 4,
                width: MediaQuery.of(context).size.width / 3,
                child: FittedBox(
                  child: ColorFiltered(colorFilter: ColorFilter.mode(selectedColor, BlendMode.modulate),
                  child: Image.asset("assets/images/pale_sofa.png")),
                  fit: BoxFit.fill,
                ),
              ),
              Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Turquoise Chair",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      const Text(
                        "Category name",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: AppColors.kprimarylightColor),
                      ),
                      Row(
                        children: [
                          activityBar(Icons.remove_red_eye, "1.5 k"),
                          activityBar(Icons.favorite, "212"),
                          activityBar(Icons.shopping_bag, "120"),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 30),
                      const Text(
                        "145 USD",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            color: AppColors.kprimarylightColor),
                      ),
                    ],
                  ),
                  const Positioned(
                    right: 0,
                    child: Icon(Icons.favorite_border),
                  ),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: Row(
                        children: [
                          ColorBox(
                            color: Colors.deepPurpleAccent,
                            onTap: () {
                              setState(() {
                                selectedColor = Colors.deepPurpleAccent;
                              });
                            },
                          ),
                          ColorBox(
                            color: Colors.purple,
                            onTap: () {
                              setState(() {
                                selectedColor = Colors.purple;
                              });
                            },
                          ),
                          ColorBox(
                            color: Colors.yellowAccent,
                            onTap: () {
                              setState(() {
                                selectedColor = Colors.yellowAccent;
                              });
                            },
                          ),
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
