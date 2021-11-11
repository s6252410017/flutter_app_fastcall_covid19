
import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_covid19/models/covid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListcallDetailUI extends StatefulWidget {
  //ตัวแปรเพื่อที่จะเก็บค่าที่ส่งมาจากอีกหน้าหนึ่ง
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String location = '';

  Covid? foodListDetail;

  ListcallDetailUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.location,
  }) : super(key: key);

  @override
  _ListcallDetailUIState createState() => _ListcallDetailUIState();
}

class _ListcallDetailUIState extends State<ListcallDetailUI> {
  //method เปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //method  โทร
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        title: Text(
          'รายละเอียดสายด่วนCovid',
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'assets/images/' + widget.image,
                  width: 170.0,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 40.0,
                  //height: 100.0,
                  child: Card(
                    color: Colors.cyan[300],
                    elevation: 10.0,
                    shadowColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        5.0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(
                            10.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person,
                              ),
                              Text(
                                '   Name:  ' + widget.name,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey[600],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            10.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.globeAsia,
                              ),
                              Text(
                                '   Website:  ' + widget.website,
                                style: TextStyle(
                                  color: Colors.grey[800],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    FontAwesomeIcons.desktop,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey[600],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            10.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.facebookF,
                              ),
                              Text(
                                '   Facebook:  ' + widget.facebook,
                                style: TextStyle(
                                  color: Colors.grey[800],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    '',
                                    style: TextStyle(
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.grey[600],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(
                            10.0,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.mobileAlt,
                              ),
                              Text(
                                '   Mobile:  ' + widget.mobile,
                                style: TextStyle(
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        //เปิดเว็บ
                        setState(() {
                          _launchInBrowser(widget.website);
                        });
                      },
                      icon: Icon(
                        FontAwesomeIcons.globeAsia,
                      ),
                      label: Text(
                        'เปิดเว็บ',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[500],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _makePhoneCall('tel:' + widget.mobile);
                        });
                      },
                      icon: Icon(
                        Icons.call,
                      ),
                      label: Text(
                        'โทรเลย',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[500],
                        fixedSize: Size(
                          130.0,
                          50.0,
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _launchInBrowser(widget.location);
                        });
                      },
                      icon: Icon(
                        FontAwesomeIcons.mapMarkedAlt,
                      ),
                      label: Text(
                        'พิกัด',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan[500],
                        fixedSize: Size(
                          120.0,
                          50.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
