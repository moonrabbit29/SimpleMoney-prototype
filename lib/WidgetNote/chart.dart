import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:topup/Model/transaction.dart';

import './chart_bar.dart';

class Chart extends StatefulWidget {
  final List<Transaction> recentTransactions;
  String type;
  Chart(this.recentTransactions);

  @override
  _Chartstate createState() => _Chartstate();
}

class _Chartstate extends State<Chart> {
  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      var totalSum = 0.0;
      String yeah='';

      for (var i = 0; i < widget.recentTransactions.length; i++) {
        if (widget.recentTransactions[i].date.day == weekDay.day &&
            widget.recentTransactions[i].date.month == weekDay.month &&
            widget.recentTransactions[i].date.year == weekDay.year) {
                widget.recentTransactions[i].typeTransaction=='Income'?totalSum += widget.recentTransactions[i].amount:totalSum -= widget.recentTransactions[i].amount;
               if(totalSum<0){
                 yeah='Outcome';
               }else{
                 yeah='Income';
               }
        }
      }

      return {
        'day': DateFormat.E().format(weekDay),
        'amount': totalSum>=0?totalSum:totalSum*-1,
        'type':yeah,
      };
    });
  }

  double get totalSpending {
    var higehst= 0.0;
    return groupedTransactionValues.fold(0.0, (sum, item) {
      if(higehst<item['amount']){
        higehst=item['amount'];
      }
      return higehst;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(8),
      child: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                ),
                alignment: Alignment.topCenter,
                child: Text(
                  'Chart Cashflow Mingguan',
                  style: TextStyle(color: Colors.purple, fontSize: 22),
                )),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: groupedTransactionValues.map((data) {
                  return Flexible(
                    fit: FlexFit.tight,
                    child: ChartBar(
                      data['day'],
                      data['amount'],
                      totalSpending == 0.0
                          ? 0.0:
                          (data['amount'] as double )/totalSpending,
                      data['type']
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
