import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  final double total;
  Balance(this.total);
  @override
  _Balancestate createState() => _Balancestate();
}

class _Balancestate extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Rp${widget.total.toString()}'
          ,
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        SizedBox(height: 15.0)
      ],
    );
  }
}
