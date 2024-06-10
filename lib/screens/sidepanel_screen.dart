import 'package:flutter/material.dart';

class SidePanel_Screen extends StatefulWidget {
  const SidePanel_Screen({super.key});
  static const routeName = '/sidePanel-screen';
  @override
  State<SidePanel_Screen> createState() => _SidePanel_ScreenState();
}

class _SidePanel_ScreenState extends State<SidePanel_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 2/3,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right:120, top:80),
                  child: Container(
                    height: 100,
                      width: 100,
                    decoration: BoxDecoration(color: Colors.grey[400], shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        Row(
                          children: [
                            Text('Akash Aggarwal',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Colors.black)),
                            Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Icon(Icons.edit,
                                    color: Colors.grey[800], size: 20.0)),
                          ],
                        ),
                        //

                        Padding(
                          padding: EdgeInsets.only(top:6, left: 4),
                          child: Text('VIEW PROFILE',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11,
                                  color: Colors.grey)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20,),
                          child:
                          //
                          Text('MANAGE CLUBS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black)),
                        ),
                      ]),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 100, left: 32),
                  child: Row(children: [
                    Icon(Icons.notifications,
                        color: Colors.grey[800], size: 20.0),
                    Padding(
                        padding: EdgeInsets.only(left: 16),
                        child:
                        //
                        Text('NOTIFICATIONS',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.black))),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 32),
                  child: Row(children: [
                    Icon(Icons.lock, color: Colors.grey[800], size: 20.0),
                    Padding(
                        padding: EdgeInsets.only(left: 16),
                        child:
                        //
                        Text('PRIVACY',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.black))),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 32),
                  child: Row(children: [
                    Icon(Icons.settings, color: Colors.grey[800], size: 20.0),
                    Padding(
                        padding: EdgeInsets.only(left: 16),
                        child:
                        //
                        Text('SETTINGS',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Colors.black)))
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 200, left: 32),
                  child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.grey[800], size: 20.0),
                      Padding(
                          padding: EdgeInsets.only(left: 16),
                          child:
                          //
                          Text('LOG OUT',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black)))
                    ],
                  ),
                ),
              ],
            )));
  }
}
