import 'package:flutter/cupertino.dart';

class Emoney{
   final String id;
  final String title;
  final double amount;
  final DateTime date;
  final String type;
  Emoney({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
    @required this.type,
  }
  );
}

