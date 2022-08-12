import 'package:flutter/material.dart';
import 'package:gligx_test/constants/color_constants.dart';

import '../custom_widgets/color_palet.dart';
import '../custom_widgets/quantity_bar.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Color selectedColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Yellow Chair",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blueGrey.withOpacity(0.7),
                        Colors.blueGrey.withOpacity(0.3),
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50.0)),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Yellow Chair",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w700,
                            fontSize: 27),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Category Name",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w100,
                                color: AppColors.kprimarylightColor),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: AppColors.kprimarylightbackgroundColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "350 USD",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: AppColors.kprimarylightColor),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width / 12,
                      ),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis",
                        style: TextStyle(
                            fontSize: 15, color: AppColors.kprimarylightColor),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Choose Color",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: AppColors.kprimarylightColor),
                              ),
                              Row(
                                children: [
                                  ColorBox(
                                    color: Colors.purple,
                                    onTap: () {
                                      setState(() {
                                        selectedColor = Colors.purple;
                                      });
                                    },
                                  ),
                                  ColorBox(
                                    color: Colors.blueGrey,
                                    onTap: () {
                                      setState(() {
                                        selectedColor = Colors.blueGrey;
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
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Select Qty",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: AppColors.kprimarylightColor),
                              ),
                              quantityBar()
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2.5,
              top: MediaQuery.of(context).size.width / 3,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.width / 1.5,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ColorFiltered(
                        colorFilter:
                            ColorFilter.mode(selectedColor, BlendMode.modulate),
                        child: Image.asset(
                          "assets/images/yellow_sofa.png",
                          height: MediaQuery.of(context).size.width,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
