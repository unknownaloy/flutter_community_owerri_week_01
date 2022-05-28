import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/bottom_panel.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/credit_card.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF9EFFF),
        appBar: const CustomAppBar(),
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: 16.0,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "My cards",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(
                          height: 44.0,
                        ),
                        Center(
                          child: CreditCard(),
                        ),
                      ],
                    ),
                  ),

                  // const SizedBox(height: 56.0,),

                  const BottomPanel(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
