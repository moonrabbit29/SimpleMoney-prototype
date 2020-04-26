import 'package:flutter/material.dart';
import 'setting.dart';

class Mydrawer extends StatelessWidget {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Setting(),
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
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: ListView(
                children: <Widget>[
                  //UserAccountsDrawerHeader(decoration: ,)
                  UserAccountsDrawerHeader(
                    accountName: Text('Denddi yeah bro'),
                    accountEmail: Text('dendiyeahbro@gmail.com'),
                    currentAccountPicture: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/endorsi.jpg')))),
                  ),
                  ListTile(
                    title: Text(
                      'E-Wallet',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    trailing: Icon(
                      Icons.monetization_on,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('mainwallet');
                    },
                  ),
                  ListTile(
                    title: Text('Cashflow Note',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    trailing: Icon(
                      Icons.note,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('Note');
                    },
                  ),
                  ListTile(
                    title: Text('Dashboard',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    trailing: Icon(
                      Icons.receipt,
                      color: Colors.white,
                    ),
                    onTap:(){Navigator.of(context).pushReplacementNamed('Dashboard');}
                  )
                ],
              ),
            ),
          ),
          Container(
              // This align moves the children to the bottom
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  // This container holds all the children that will be aligned
                  // on the bottom and should not scroll with the above ListView
                  child: Container(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Column(
                        children: <Widget>[
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.settings),
                            title: Text('Settings'),
                            onTap: (){
                              Navigator.of(context).push(_createRoute());
                            }
                          ),
                          
                        ],
                      ))))
        ],
      ),
    );
  }
}

class CustomShapeClipper2 extends CustomClipper<Path> {
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
