import 'package:flutter/material.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(id: "t1", title: "Milk", amount: 25, date: DateTime.now()),
    Transaction(id: "t2", title: "Water", amount: 20, date: DateTime.now())
  ];
  void _addNewTransaction(String Title, int Amount) {
    final insert = Transaction(
        id: _userTransactions.length.toString(),
        title: Title,
        amount: Amount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(insert);
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
