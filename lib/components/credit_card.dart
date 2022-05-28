import 'dart:math';

import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final Color cardColor;

  const CreditCard({
    Key? key,
    this.cardColor = Colors.purpleAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: -pi / 24,
          child: Container(
            height: 192.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: cardColor.withAlpha(40),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(24.0),
          height: 192.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 32.0,
                    width: 48.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "3482 8384 8283 4833",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 64.0,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: const [
                        Positioned(
                          top: 0,
                          right: 10.0,
                          bottom: 0,
                          left: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 16.0,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: CircleAvatar(
                            backgroundColor: Colors.orangeAccent,
                            radius: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
