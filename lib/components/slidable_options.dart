import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/options_card.dart';

class SlidableOptions extends StatelessWidget {
  const SlidableOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      padding: const EdgeInsets.all(24.0),
      margin: const EdgeInsets.only(
        left: 24.0,
        bottom: 24.0,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
        color: Color(0xffF9EFFF),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
         OptionsCard(title: "Health", highLightColor: Colors.lightBlueAccent,),
         OptionsCard(title: "Utilities", highLightColor: Colors.purpleAccent,),
         OptionsCard(title: "Music", highLightColor: Colors.orangeAccent,),
        ],
      ),
    );
  }
}
