import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Model/emoney.dart';

class History extends StatelessWidget {
  final List<Emoney> history;
  History({this.history});

  @override
  Widget build(BuildContext context) {
    return history.isEmpty
        ? Column(
            children: <Widget>[
              Text(
                'No transactions added yet!',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          )
        :ListView.builder(
           scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) { 
              return Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Container(
             
              decoration: BoxDecoration(
                  color: history[index].title=='Topup'?Colors.green:Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(25.0))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(history[index].title,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20.0),
                    Text('${history[index].amount.toString()}',
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                      Text(DateFormat.yMMMd().format(history[index].date),
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
        );
              },
              itemCount: history.length,
        );
  }
  
}
