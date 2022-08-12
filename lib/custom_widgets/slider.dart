import 'package:flutter/material.dart';

import 'color_palet.dart';

class SliderImage extends StatefulWidget {
  final String categoryName;
  final String productName;
  final String productRate;
  final String productImage;
  final Color backgrounColor;
  final Color color1;
  final Color color2;
  final Color color3;

  SliderImage(
      this.categoryName,
      this.productName,
      this.productRate,
      this.productImage,
      this.backgrounColor,
      this.color1,
      this.color2,
      this.color3);

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  Color selectedColor = Colors.transparent;
  bool clickSelectedColor = false;
  @override
  Widget build(BuildContext context) {
    selectedColor = clickSelectedColor ? selectedColor : widget.color1;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      widget.backgrounColor.withOpacity(0.7),
                      widget.backgrounColor.withOpacity(0.3),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: MediaQuery.of(context).size.height / 2,
                child: ColorFiltered(
                    colorFilter:
                        ColorFilter.mode(selectedColor, BlendMode.modulate),
                    child: Image.asset(widget.productImage)),
              ),
              Positioned(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.categoryName,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.productName.toUpperCase(),
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )),
              const Positioned(
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${widget.productRate} USD",
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 13),
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ColorBox(
                          color: widget.color1,
                          onTap: () {
                            setState(() {
                              clickSelectedColor = true;
                              selectedColor = widget.color1;
                            });
                          },
                        ),
                        ColorBox(
                          color: widget.color2,
                          onTap: () {
                            setState(() {
                              clickSelectedColor = true;
                              selectedColor = widget.color2;
                            });
                          },
                        ),
                        ColorBox(
                          color: widget.color3,
                          onTap: () {
                            setState(() {
                              clickSelectedColor = true;
                              selectedColor = widget.color3;
                            });
                          },
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
