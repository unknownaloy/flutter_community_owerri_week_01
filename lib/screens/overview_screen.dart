import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/custom_app_bar.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/custom_line_chart.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/income_expense_switch.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/slidable_options.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(appBarColor: Colors.white,),
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
                      children: [
                        const Text(
                          "Overview",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(
                          height: 44.0,
                        ),
                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                "Total balance",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "\$12,326",
                                style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                height: 40.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 24.0),
                        child: IncomeExpenseSwitch(),
                      ),

                      SizedBox(height: 16.0,),

                      CustomLineChart(),


                    ],
                  ),

                  const SlidableOptions(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
