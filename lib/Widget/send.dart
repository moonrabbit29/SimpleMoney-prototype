import 'package:flutter/material.dart';


class Transfer extends StatefulWidget {
  final Function addTop;
  final double balance;
  Transfer(this.addTop, this.balance);
  @override
  _TransferState createState() => _TransferState();
}
//class AllertDialog

class _TransferState extends State<Transfer> {
  final amountController = TextEditingController();
  final rekeningController = TextEditingController();
  final bankController = TextEditingController();
  final emailController = TextEditingController();
  final beritaController = TextEditingController();

  createAllertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white70,
            elevation: 10,
            title: Text('Allert'),
            content: Container(
              height: 30,
              child: Column(children: <Widget>[
                Text(
                  'Saldo Anda Tidak Mencukupi untuk melakakuan transaksi',
                  style: TextStyle(fontSize: 10),
                ),
                Icon(
                  Icons.warning,
                  color: Colors.red,
                  size: 18,
                ),
              ]),
            ),
            actions: <Widget>[
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      behavior: HitTestBehavior.opaque,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  void submitData(BuildContext context) {
    final enteredAmount = double.parse(amountController.text);
    if (enteredAmount <= 0) {
      return;
    } else if (enteredAmount > widget.balance) {
      createAllertDialog(context);
      return;
    }
    widget.addTop(
        txTitle: 'Transfer',
        txAmount: enteredAmount,
        dateselected: DateTime.now(),
        ttype: 'Ewallet-transfer');
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Transfer'),
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
                  decoration: InputDecoration(labelText: 'kode bank tujuan'),
                  controller: bankController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submitData(context),
                ),
                TextField(
                  decoration:
                      InputDecoration(labelText: 'Nomor Rekening Tujuan'),
                  controller: rekeningController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submitData(context),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Email Penerima'),
                  controller: emailController,
                  keyboardType: TextInputType.text,
                  onSubmitted: (_) => submitData(context),
                  // onChanged: (val) => amountInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Nominal'),
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  onSubmitted: (_) => submitData(context),
                  // onChanged: (val) => amountInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Berita Acara'),
                  controller: beritaController,
                  keyboardType: TextInputType.text,
                  onSubmitted: (_) => submitData(context),
                  // onChanged: (val) => amountInput = val,
                ),
                SizedBox(
                  height: 35,
                ),
                RaisedButton(
                  child: Text('Send'),
                  color: Colors.purple,
                  textColor: Colors.white,
                  onPressed: () => submitData(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
