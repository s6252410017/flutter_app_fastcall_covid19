import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_covid19/models/covid.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListcallFastcallUI extends StatefulWidget {
  //ตัวแปรเพื่อที่จะเก็บค่าที่ส่งมาจากอีกหน้าหนึ่ง

  ListcallFastcallUI({Key? key}) : super(key: key);

  @override
  _ListcallFastcallUIState createState() => _ListcallFastcallUIState();
}

class _ListcallFastcallUIState extends State<ListcallFastcallUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text(
          'สายด่วนมาก',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //เปิดเว็บ
                },
                icon: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                ),
                label: Text(
                  '191   เหตุด่วนเหตุร้าย',
                  textAlign: TextAlign.left,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  fixedSize: Size(
                    500.0,
                    70.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //เปิดเว็บ
                  //
                },
                icon: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                ),
                label: Text(
                  '1442   กรมควบคุมโรค',
                  textAlign: TextAlign.left,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  fixedSize: Size(
                    500.0,
                    70.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //เปิดเว็บ
                  //
                },
                icon: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                ),
                label: Text(
                  '1669   สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
                  textAlign: TextAlign.left,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  fixedSize: Size(
                    500.0,
                    70.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //เปิดเว็บ
                  //
                },
                icon: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                ),
                label: Text(
                  '1668   สายด่วนโควิดเฉพาะกิจ',
                  textAlign: TextAlign.left,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  fixedSize: Size(
                    500.0,
                    70.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //เปิดเว็บ
                  //
                },
                icon: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                ),
                label: Text(
                  '1506   สำนักงานประกันสังคม',
                  textAlign: TextAlign.left,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  fixedSize: Size(
                    500.0,
                    70.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  //เปิดเว็บ
                  //
                },
                icon: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                ),
                label: Text(
                  '1323   กรมสุขภาพจิต',
                  textAlign: TextAlign.left,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[900],
                  fixedSize: Size(
                    500.0,
                    70.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
