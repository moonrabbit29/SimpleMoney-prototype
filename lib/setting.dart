import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil Saya'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 12),
              Card(
                margin: EdgeInsets.all(10),
                elevation: 1,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purpleAccent,
                  )),
                  height: 120,
                  padding:
                      EdgeInsets.only(top: 2, bottom: 8, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundImage: AssetImage('assets/endorsi.jpg'),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 30, left: 14),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'Dendi yeah dude',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('081234567899'),
                              Text(
                                'dendiyeahdude@gmail.com',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Align(
                          alignment: FractionalOffset.centerLeft,
                          child: Icon(
                            MdiIcons.accountEdit,
                            size: 40,
                            color: Colors.purple,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.only(left: 20, bottom: 5),
                  child: Text(
                    'Akun',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Container(
                width: 400,
                padding: EdgeInsets.only(left: 10, bottom: 12),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.tagOffOutline,color: Colors.purple,),
                          title: Text('Masukan Kode Promo',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.accountGroupOutline, color: Colors.purple,),
                          title: Text('Ajak Teman',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.ticketPercent,color: Colors.purple,),
                          title: Text('Voucher Saya',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.translate,color: Colors.purple,),
                          title: Text('Pilih Bahasa',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.faceAgent,color: Colors.purple,),
                          onTap: () {},
                          title: Text('Bantuan',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 5, left: 20, bottom: 8),
                  child: Text(
                    'Privasi dan Keamanan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Container(
                  width: 400,
                  padding: EdgeInsets.only(left: 10, bottom: 12),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.shieldAccountOutline,color: Colors.purple,),
                          title: Text('Ubah kode keamanan',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.shieldAlertOutline,color: Colors.purple,),
                          title: Text('Kebijakan Privasi',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 3, left: 20, bottom: 5),
                  child: Text(
                    'Tentang',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Container(
                  width: 400,
                  padding: EdgeInsets.only(left: 10, bottom: 12),
                  child: Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 4, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.helpBox,color: Colors.purple,),
                          title: Text('Panduan Easy Money',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 2),
                      child: Card(
                        elevation: 1,
                        color: Colors.grey[100],
                        child: ListTile(
                          leading: Icon(MdiIcons.bookInformationVariant,color: Colors.purple,),
                          title: Text('ketentuan',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold)),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.purple,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ])),
            ],
          ),
        ));
  }
}
