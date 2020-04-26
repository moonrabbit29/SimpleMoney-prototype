import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgetNote/new_transaction.dart';
import '../widgetNote/transaction_list.dart';
import '../widgetNote/chart.dart';
import '../Model/transaction.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgetNote/Calculator.dart';
import '../drawer.dart';

class MainNotes extends StatefulWidget {
  // String titleInput;
  // String amountInput;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MainNotes> {
  final DateTime now = DateTime.now();
  final List<Transaction> _userTransactions = [
    Transaction(
        id: DateTime.now().toString(),
        amount: 6000,
        title: 'Gorengan',
        date: DateTime.now(),
        typeTransaction: 'Income'),
    Transaction(
        id: DateTime.now().toString(),
        amount: 8000,
        title: 'Nemu Duid',
        date: DateTime(
            2020,
            DateTime.now().month,
            DateTime.now().day - 1,
            DateTime.now().hour,
            DateTime.now().minute,
            DateTime.now().millisecond,
            DateTime.now().microsecond),
        typeTransaction: 'Income'),
            Transaction(
        id: DateTime.now().toString(),
        amount: 2000,
        title: 'Galon',
        date: DateTime(
            2020,
            DateTime.now().month,
            DateTime.now().day - 2,
            DateTime.now().hour,
            DateTime.now().minute,
            DateTime.now().millisecond,
            DateTime.now().microsecond),
        typeTransaction: 'Outcome'),
            Transaction(
        id: DateTime.now().toString(),
        amount: 7000,
        title: 'Frestea',
        date: DateTime(
            2020,
            DateTime.now().month,
            DateTime.now().day - 3,
            DateTime.now().hour,
            DateTime.now().minute,
            DateTime.now().millisecond,
            DateTime.now().microsecond),
        typeTransaction: 'Outcome'),
            Transaction(
        id: DateTime.now().toString(),
        amount: 12000,
        title: 'Bensin',
        date: DateTime(
            2020,
            DateTime.now().month,
            DateTime.now().day - 4,
            DateTime.now().hour,
            DateTime.now().minute,
            DateTime.now().millisecond,
            DateTime.now().microsecond),
        typeTransaction: 'Outcome'),
  ];

  List<Transaction> get _recentTransactions {
    return _userTransactions.where((tx) {
      return tx.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _addNewTransaction(String txTitle, double txAmount, DateTime selected,
      String typetransaction) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: selected,
      id: DateTime.now().toString(),
      typeTransaction: typetransaction,
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _deleteTransaction(String id) {
    setState(() {
      _userTransactions.removeWhere((tx) => tx.id == id);
    });
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          Calculator(title: 'Calculator'),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewTransaction(_addNewTransaction),
          behavior: HitTestBehavior.opaque,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Cashflow',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(MdiIcons.calculator),
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
          ),
        ],
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Chart(_recentTransactions),
            TransactionList(_userTransactions, _deleteTransaction),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
    );
  }
}

/*class CostumShapeClipper extends CostumShapeClipper<Path>{
@override 
Path getClip(Size size){
  var path = Path();

  path.lineTo(0, y)
}
}*/
