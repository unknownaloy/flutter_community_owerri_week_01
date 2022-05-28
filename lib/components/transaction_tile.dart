import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String name;
  final String timeStamp;
  final String amount;

  const TransactionTile({
    Key? key,
    required this.name,
    required this.timeStamp,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 56.0,
        width: 56.0,
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 12.0,
        ),
      ),
      subtitle: Text(
        timeStamp,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
      ),
      trailing: Text(
        amount,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
