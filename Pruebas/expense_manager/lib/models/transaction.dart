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

  Transaction.c2({
    @required this.title,
    @required this.amount,
  }){
    this.id=DateTime.now().toString();
    this.date=DateTime.now();
  }

  Transaction.c3({
    @required this.title,
    @required this.amount,
    @required this.date,
  }){
    this.id=DateTime.now().toString();
  }
}
