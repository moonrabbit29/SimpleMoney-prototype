import 'package:flutter/material.dart';
import '../Model/emoney.dart';
import '../Widget/balance.dart';
import '../Widget/topup.dart';
import '../Widget/history.dart';
import '../Widget/send.dart';
import '../drawer.dart';
import '../Widget/Payment.dart';
import 'dart:async';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class Mywallet extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Mywallet> {
  final List<Emoney> _userbalance = [
    Emoney(id:DateTime.now().toString() +'Ewallet-transfer',type: 'Ewallet-transfer',title: 'Transfer',date:DateTime.now(),amount: 240),
    Emoney(id:DateTime.now().toString() +'Ewallet-transfer',type: 'Topup',title: 'Topup',date:DateTime.now(),amount: 340)
  ];
  double _totabalance = 2800;
  String barcode = '';

  void _transaction({
    @required String txTitle,
    @required double txAmount,
    @required String ttype,
    @required DateTime dateselected,
  }) {
    final newTopup = Emoney(
      title: txTitle,
      amount: txAmount,
      date: dateselected,
      id: DateTime.now().toString() + ttype,
      type: ttype,
    );

    setState(() {
      _userbalance.add(newTopup);
      if (txTitle == 'Topup') {
        _totabalance += txAmount;
      } else if (txTitle == 'Transfer') {
        _totabalance -= txAmount;
      } else {
        return;
      }
      //txTitle == 'Topup' ? _totabalance += txAmount : _totabalance += txAmount;
    });
  }

  Route _createRoute(String typetr) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => typetr == 'Topup'
          ? Newtopup(_transaction)
          : Transfer(_transaction, _totabalance),
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

  Future scan() async {
    try {
      barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

  Route _createRoute2() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          Charity(_totabalance),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0.1,
      ),
      drawer: Mydrawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 350,
                    decoration:
                        BoxDecoration(color: Theme.of(context).primaryColor),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Balance(_totabalance),
                            Padding(
                              padding: const EdgeInsets.only(top:2.0),
                              child: Text('Saldo Tesedia',style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                               Material(
                                elevation: 1.0,
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blue,
                                child: MaterialButton(
                                  onPressed: scan,
                                  padding: EdgeInsets.symmetric(),
                                  child: Text('Scan',
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.white)),
                                ),
                              ),
                            
                          ],
                        ),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, right: 25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 185.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0)
                        ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.purple.withOpacity(0.1),
                                  child: IconButton(
                                    padding: EdgeInsets.all(15.0),
                                    icon: Icon(Icons.send),
                                    color: Colors.purple,
                                    iconSize: 40.0,
                                    onPressed: () => Navigator.of(context)
                                        .push(_createRoute('Transfer')),
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Send',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ]),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.credit_card),
                                      color: Colors.blue,
                                      iconSize: 40.0,
                                      onPressed: () {
                                        Navigator.of(context).push(_createRoute2());
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Payment',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.orange.withOpacity(0.1),
                                    child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(Icons.receipt),
                                        color: Colors.orange,
                                        iconSize: 40.0,
                                        onPressed: () =>  Navigator.of(context)
                                      .push(_createRoute('Topup'))),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('TopUp',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, right: 10.0, left: 10.0),
              child: Container(
                width: double.infinity,
                height: 200.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0, right: 10.0, left: 5.0),
                      child: ListTile(
                        title: Text('Info dan Promo Spesial',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            )),
                        trailing: Icon(
                          Icons.arrow_right,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Container(
                                width: 225,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/charity.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Container(
                                width: 225,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/salad.jpeg",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Container(
                                width: 225,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/pizza.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Container(
                                width: 225,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/download.jpeg",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, right: 10.0, left: 5.0),
              child: ListTile(
                title: Text('Trasaction History',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    )),
                trailing: Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 40,
                ),
              ),
            ),
             SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(top: 0, right: 10.0, left: 10.0),
              child: Container(
                width: double.infinity,
                height: 150.0,
                child: History(
                  history: _userbalance,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
