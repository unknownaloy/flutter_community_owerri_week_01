import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_community_owerri_week_01_sample_01/enums/income_or_expense.dart';

class IncomeExpenseSwitch extends StatefulWidget {
  const IncomeExpenseSwitch({Key? key}) : super(key: key);

  @override
  State<IncomeExpenseSwitch> createState() => _IncomeExpenseSwitchState();
}

class _IncomeExpenseSwitchState extends State<IncomeExpenseSwitch> {

  IncomeOrExpense _selectedOption = IncomeOrExpense.incomes;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: const Color(0xffF9EFFF),
      ),
      child: CupertinoSlidingSegmentedControl<
          IncomeOrExpense>(
        backgroundColor: const Color(0xffF9EFFF),
        thumbColor: Colors.white,
        groupValue: _selectedOption,
        children: const <IncomeOrExpense, Widget>{
          IncomeOrExpense.incomes: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 14.0,
            ),
            child: Text(
              'Incomes',
              style: TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.w700,),
            ),
          ),
          IncomeOrExpense.expenses: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 14.0,
            ),
            child: Text(
              'Expenses',
              style: TextStyle(
                color: CupertinoColors.black, fontWeight: FontWeight.w700,),
            ),
          ),
        },
        onValueChanged: (value) {
          if (value != null) {
            setState(() {
              _selectedOption = value;
            });
          }
        },
      ),
    );
  }
}
