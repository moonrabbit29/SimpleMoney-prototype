import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Charity extends StatefulWidget {
  final double nominal;
  Charity(this.nominal);
  @override
  _CharityState createState() => _CharityState();
}

class _CharityState extends State<Charity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('Payment'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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
                    padding: EdgeInsets.only(right: 8.0, top: 30, bottom: 20),
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
                                    "assets/online-payment.png",
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
                                    "assets/PayBills_SponsAd.png",
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
                                    "assets/Telkomsel-Paket-Promo-Seru-Jan-2020-01-1024x536.jpg",
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
                                    "assets/images.jpg",
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
                                    "assets/ciclan1.jpg",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 150.0, right: 25, left: 25),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Favorit Anda',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.purple.withOpacity(0.1),
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(MdiIcons.cellphoneWireless,color: Colors.purple,),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('Pulsa',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.purple.withOpacity(0.1),
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(MdiIcons.phone,color: Colors.purple,),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('Telpon Rumah',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.blue.withOpacity(0.4),
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(MdiIcons.flash,color: Colors.yellow,),
                                        color: Colors.blue,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('Listrik PLN',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Material(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                      color: Colors.blue.withOpacity(0.5),
                                      child: IconButton(
                                        padding: EdgeInsets.all(15.0),
                                        icon: Icon(MdiIcons.ticketConfirmationOutline,color: Colors.yellow,),
                                        color: Colors.purple,
                                        iconSize: 30.0,
                                        onPressed: () {},
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('MiTixx',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 4),
                      child: Text('Prabayar & pascabayar'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.cellphoneWireless,color: Colors.purple,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Pulsa',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.swapVertical,color: Colors.purple,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Paket Data',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.swapVertical,color:Colors.purple),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Roaming',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.sim,color: Colors.purple,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Pascabayar',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 30, bottom: 4),
                      child: Text('Bayar'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.water,color: Colors.blue
                                    ,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Air PDAM',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.collage,color: Colors.purple,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 48,
                                  child: AutoSizeText(
                                    'Biaya Kuliah',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.satelliteUplink,color: Colors.purple,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text('Telkom',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.creditCardOffOutline,color: Colors.purple,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 55,
                                  child: AutoSizeText(
                                    'Angsuran kredit',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.4),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.flash,color: Colors.yellow,),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 50,
                                  child: AutoSizeText(
                                    'Listrik PLN',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.phoneBluetooth),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 48,
                                  child: AutoSizeText(
                                    'Biaya Kuliah',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.phoneBluetooth),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 48,
                                  child: AutoSizeText(
                                    'Internet dan TV kabel',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    minFontSize: 4,
                                    maxLines: 3,
                                    stepGranularity: 4,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Column(
                              children: <Widget>[
                                Material(
                                  borderRadius: BorderRadius.circular(100.0),
                                  color: Colors.blue.withOpacity(0.05),
                                  child: IconButton(
                                    padding: EdgeInsets.all(8.0),
                                    icon: Icon(MdiIcons.phoneBluetooth),
                                    color: Colors.blue,
                                    iconSize: 20.0,
                                    onPressed: () {},
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Container(
                                  width: 48,
                                  child: AutoSizeText(
                                    'Premi Asuransi',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
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
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
