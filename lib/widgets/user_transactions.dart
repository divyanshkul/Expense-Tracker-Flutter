//This widget is to avoid managing the process of inputting data
//and passing that data on to the transactions list

import 'package:expense_tracker_flutter/models/transaction.dart';
import 'package:expense_tracker_flutter/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "t1",
      title: "Pizza",
      amount: 400,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t1",
      title: "Burger",
      amount: 120,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Thaali",
      amount: 140,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
