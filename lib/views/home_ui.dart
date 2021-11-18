import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_fastcall_covid19/views/listcall_covid_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeUI extends StatelessWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 80.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.phoneVolume,
                      size: 60.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'สายด่วน',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2, //ระยะห่างของแต่ละตัวอักษร
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'สำคัญ',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2, //ระยะห่างของแต่ละตัวอักษร
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'โควิด',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.2, //ระยะห่างของแต่ละตัวอักษร
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListcallCovidUI(),
                    ),
                  );
                },
                child: Text(
                  'เข้าดู',
                  style: TextStyle(
                    fontFamily: 'kanit',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 100.0,
                    60.0,
                  ),
                  primary: Colors.cyan[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}