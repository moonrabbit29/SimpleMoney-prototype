import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOfTotal;
  final String type;
  double oraa=0.0;
  Color nigga;

  ChartBar(this.label, this.spendingAmount, this.spendingPctOfTotal, this.type);

  double yeah(){
    if(type=='Income'){
      nigga=Colors.purple;
      return spendingPctOfTotal;
    }else{
      nigga=Colors.red;
      return spendingPctOfTotal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 20,
                  child: FittedBox(
            child: Text(type=='Outcome'?'Rp - ${spendingAmount.toStringAsFixed(0)}':'Rp ${spendingAmount.toStringAsFixed(0)}'),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 100,
          width: 12,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
               FractionallySizedBox(
                  heightFactor: yeah(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: nigga,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(label),
      ],
    );
  }
}
