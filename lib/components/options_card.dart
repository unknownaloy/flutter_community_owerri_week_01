import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  final String title;
  final Color highLightColor;

  const OptionsCard({
    Key? key,
    required this.title,
    required this.highLightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      padding: const EdgeInsets.all(16.0),
      // height: 24.0,
      width: 128.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 32.0,
            width: 32.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: highLightColor,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              LinearProgressIndicator(
                value: 0.5,
                color: highLightColor,
                backgroundColor: highLightColor.withAlpha(50),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
