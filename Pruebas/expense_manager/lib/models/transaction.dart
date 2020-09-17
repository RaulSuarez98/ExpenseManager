import 'package:flutter/foundation.dart';

class Transaction {
  String id;
  final String title;
  final double amount;
  DateTime date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });

  Transaction.t2({
    @required this.title,
    @required this.amount,
  }){
    this.id=DateTime.now().toString();
    this.date=DateTime.now();
  }
}
