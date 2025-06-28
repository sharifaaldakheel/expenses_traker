import 'package:expenses_traker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: Column(
          children: [
            Text(expense.title),
            SizedBox(height: 3),
            Row(
              children: [
                Text('${expense.amount.toStringAsFixed(2)}'),
                //Spacer to take up all the space
                Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    SizedBox(height: 3),
                    Text(expense.date.toLocal().toString().split(' ')[0]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
