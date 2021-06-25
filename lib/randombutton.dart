import 'dart:math';

import 'package:flutter/material.dart';

class RandomButtonWidget extends StatefulWidget {
  @override
  _RandomButtonWidgetState createState() => _RandomButtonWidgetState();
}

class _RandomButtonWidgetState extends State<RandomButtonWidget> {
  static const double minSize = 50;
  static const double maxSize = 200;

  Color color = Colors.green;
  double width = maxSize;
  double height = maxSize;
  BorderRadius borderRadius = BorderRadius.zero;

  @override
  Widget build(BuildContext context) =>
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
    children: [
        Container(
          color: Colors.white,
          width: maxSize,
          height: maxSize,
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInBack,
              width: width,
              height: height,
              child: Center(
                child: Text('KOÇ BURCU ' ,style: TextStyle(color: Colors.white),),
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: borderRadius,

              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        RaisedButton(
          shape: StadiumBorder(),
          color: Colors.green[100],
          child: Text(
            'Koç Burcu Özellikleri',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            final random = Random();

            final red = random.nextInt(255);
            final green = random.nextInt(255);
            final blue = random.nextInt(255);
            final color = Color.fromRGBO(red, green, blue, 1);

            final size = generateSize();

            /// BorderRadius
            final borderRadius =
            BorderRadius.circular(random.nextDouble() * 80);

            setState(() {
              this.color = color;
              this.width = size.width;
              this.height = size.height;
              this.borderRadius = borderRadius;
            });
          },
        ),
    ],
  ),
      );

  Size generateSize() {
    final random = Random();

    final addMax = maxSize.toInt() - minSize.toInt();
    final width = minSize + random.nextInt(addMax);
    final height = minSize + random.nextInt(addMax);

    return Size(width, height);
  }
}