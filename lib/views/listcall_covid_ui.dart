import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_covid19/models/covid.dart';
import 'package:flutter_app_fastcall_covid19/views/listcall_fastcall_ui.dart';
import 'listcall_detail_ui.dart';

class ListcallCovidUI extends StatefulWidget {
  const ListcallCovidUI({Key? key}) : super(key: key);

  @override
  _ListcallCovidUIState createState() => _ListcallCovidUIState();
}

class _ListcallCovidUIState extends State<ListcallCovidUI> {
  List<Covid> covid = [
    Covid(
      name: 'สำนักงานหลักประกันสุขภาพแห่งชาติ',
      website: 'https://www.nhso.go.th',
      facebook: 'สำนักงานหลักประกันสุขภาพแห่งชาติ',
      mobile: '1330',
      image: 'f1.png',
      location: 'https://goo.gl/maps/3whWtBQDWbBAcf1k7',
      facelink: 'https://www.facebook.com/NHSO.Thailand/',
    ),
    Covid(
      name: 'กรมควบคุมโรค',
      website: 'https://ddc.moph.go.th/',
      facebook: 'กรมควบคุมโรค กระทรวงสาธารณสุข',
      mobile: '1422',
      image: 'f2.jpg',
      location: 'https://goo.gl/maps/3RvVQBvZkmbYhST4A',
      facelink: 'https://www.facebook.com/%E0%B8%81%E0%B8%A3%E0%B8%A1%E0%B8%84%E0%B8%A7%E0%B8%9A%E0%B8%84%E0%B8%B8%E0%B8%A1%E0%B9%82%E0%B8%A3%E0%B8%84-%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%97%E0%B8%A3%E0%B8%A7%E0%B8%87%E0%B8%AA%E0%B8%B2%E0%B8%98%E0%B8%B2%E0%B8%A3%E0%B8%93%E0%B8%AA%E0%B8%B8%E0%B8%82-470988516420706/',
    ),
    Covid(
      name: 'กรมการแพทย์',
      website: 'https://www.dms.go.th/',
      facebook: 'กรมการแพทย์',
      mobile: '1668',
      image: 'f3.jpg',
      location: 'https://goo.gl/maps/SJDPC67dcSKTN7vH7',
      facelink: 'https://www.facebook.com/%E0%B8%81%E0%B8%A3%E0%B8%A1%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%9E%E0%B8%97%E0%B8%A2%E0%B9%8C-643148052494633/',
    ),
    Covid(
      name: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
      website: 'https://www.niems.go.th/1/Home/Main',
      facebook: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ-สพฉ.1669',
      mobile: '1669',
      image: 'f4.jpg',
      location: 'https://goo.gl/maps/3PsUcaWG4s7fJYie7',
      facelink: 'https://www.facebook.com/niem1669',
    ),
    Covid(
      name: 'ศูนย์การแพทย์ฉุกเฉิน กทม.',
      website: 'http://www.msdbangkok.go.th/news%20Erawan%20flood.html',
      facebook: 'ศูนย์เอราวัณ กรุงเทพมหานคร',
      mobile: '1646',
      image: 'f5.jpg',
      location: 'https://goo.gl/maps/aDQmkam5xnoAEynm7',
      facelink: 'https://www.facebook.com/bangkokems',
    ),
    Covid(
      name: 'กรมสุขภาพจิต',
      website: 'https://www.dmh.go.th//',
      facebook: 'กรมสุขภาพจิต กระทรวงสาธารณสุข',
      mobile: '1323',
      image: 'f6.jpg',
      location: 'https://goo.gl/maps/j6oRQPpusdkzfZhw9',
      facelink: 'https://www.facebook.com/THAIDMH',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text(
          'สายด่วนสำคัญช่วงโควิด',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/bgdrawer.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 50.0,
                  color: Colors.cyan[200],
                );
              },
              itemCount: covid.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    //เปิดไปหน้า ListFoodDetailUI
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //ที่หน้า ListfoodDetailUI มีการสร้างตัวแปรรับค่า
                          //ดังนั้นในการเปิดไปหน้า ListfoodDetailUI เราจึงต้องส่งข้อมูลไปด้วย
                          return ListcallDetailUI(
                            name: covid[index].name,
                            website: covid[index].website,
                            facebook: covid[index].facebook,
                            mobile: covid[index].mobile,
                            image: covid[index].image,
                            location: covid[index].location,
                            facelink: covid[index].facelink,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    covid[index].name,
                  ),
                  subtitle: Text(
                    covid[index].mobile,
                  ),
                  leading: ClipOval(
                    child: Image.asset(
                      'assets/images/' + covid[index].image,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
             /*  currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/vclogo.png',
                ),
              ), */
              accountName: Text(
                '',
              ),
              accountEmail: Text(
                '',
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bgdrawer1.jpg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              /* otherAccountsPictures: [
                Image.asset(
                  'assets/images/vclogo.png',
                ),
              ], */
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'หน้าแรก',
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListcallFastcallUI(),
                        ),
                      );
              },
              title: Text(
                'สายด่วน (โทรเลย)',
              ),
              leading: Icon(
                Icons.phone_android_outlined,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'จำนวนผู้ติดเชื้อวันนี้',
              ),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              trailing: Text(
                '999',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              title: Text(
                'ออกจาการใช้งาน',
              ),
              trailing: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
