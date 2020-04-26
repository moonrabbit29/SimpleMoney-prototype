import 'package:flutter/material.dart';

class Confirmation extends StatefulWidget {
  final Function addTop;
  final String amountController;
  final String rekeningController;
  final String bankController;
  final String emailController;
  final String beritaController;
  final double yey;
  Confirmation(this.addTop, this.amountController, this.bankController,
      this.rekeningController, this.emailController, this.beritaController,this.yey);
  @override
  _TransferState createState() => _TransferState();
}
//class AllertDialog

class _TransferState extends State<Confirmation> {
  void submitdata(BuildContext context) {
      widget.addTop(
        txTitle: 'Transfer',
        txAmount: widget.yey,
        dateselected: DateTime.now(),
        ttype: 'Ewallet-transfer');
    Navigator.of(context).pop();
  }

  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Konfirmasi'),
      ),
      body: Container(
        child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(height: 100,
                child: Column(children: <Widget>[
                  Text('Penerima : Bapak zaki'),
                  Text(widget.rekeningController),
                  Text(widget.bankController),
                  Text(widget.amountController),
                  Text(widget.beritaController),
                  Text(widget.emailController),
                ],),
                ),
                RaisedButton(
                  child: Text('Send'),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () => submitdata(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
