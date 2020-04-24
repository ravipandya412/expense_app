import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return //Transaction Card
        Column(
            children: transactions.map((tx) {
      return Card(
          child: Row(
        children: <Widget>[
          //Amount
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2)),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$${tx.amount}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple),
            ),
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //title
                Text(
                  tx.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Date
                Text(
                  DateFormat.yMMMd().format(tx.date),
                  style: TextStyle(color: Colors.grey),
                )
              ]),
        ],
      ));
    }).toList());
  }
}
