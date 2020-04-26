import 'package:flutter/material.dart';

class Newtopup extends StatefulWidget {
  final Function addTop;
  Newtopup(this.addTop);
  @override
  _Newtopup createState() => _Newtopup();
}

class _Newtopup extends State<Newtopup> {
  final amountController = TextEditingController();

  void submitData() {
    final enteredAmount = double.parse(amountController.text);
    if (enteredAmount <= 0) {
      return;
    }
    widget.addTop(
        txTitle: 'Topup', txAmount: enteredAmount,dateselected:DateTime.now(),ttype:'Ewallet-topup');
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Topup'),
      ),
      body: Container(
        child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submitData(),
                  // onChanged: (val) => amountInput = val,
                ),
                SizedBox(
                  height: 35,
                ),
                RaisedButton(
                  child: Text('Top Up'),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: submitData,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
