import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_01_sample_01/components/transaction_tile.dart';

class BottomPanel extends StatelessWidget {
  const BottomPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      height: 416.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 2.0,
              width: 24.0,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            "Last transactions",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          const TransactionTile(
            name: "Olivia Jones",
            timeStamp: "Sep 4, 4:10AM",
            amount: "-\$890.00",
          ),
          const TransactionTile(
            name: "Liam Switch",
            timeStamp: "Sep 4, 4:10AM",
            amount: "-\$890.00",
          ),
          const TransactionTile(
            name: "Michael Korner",
            timeStamp: "Sep 4, 4:10AM",
            amount: "-\$890.00",
          ),
          const TransactionTile(
            name: "Nick Tore",
            timeStamp: "Sep 4, 4:10AM",
            amount: "-\$890.00",
          ),
        ],
      ),
    );
  }
}
