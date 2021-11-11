import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall_covid19/models/covid.dart';

import 'listcall_detail_ui.dart';




class ListcallCovidUI extends StatefulWidget {
  const ListcallCovidUI({ Key? key }) : super(key: key);

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
      location:
          'https://goo.gl/maps/3whWtBQDWbBAcf1k7',
    ),
    Covid(
      name: 'กรมควบคุมโรค',
      website: 'https://ddc.moph.go.th/',
      facebook: 'กรมควบคุมโรค กระทรวงสาธารณสุข',
      mobile: '1422',
      image: 'f2.jpg',
      location:
          'https://goo.gl/maps/3RvVQBvZkmbYhST4A',
    ),
    Covid(
      name: 'กรมการแพทย์',
      website: 'https://www.dms.go.th/',
      facebook: 'กรมการแพทย์',
      mobile: '1668',
      image: 'f3.jpg',
      location:
          'https://goo.gl/maps/SJDPC67dcSKTN7vH7',
    ),
    Covid(
      name: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
      website: 'https://www.niems.go.th/1/Home/Main',
      facebook: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ -สพฉ.1669',
      mobile: '1669',
      image: 'f4.jpg',
      location:
          'https://goo.gl/maps/3PsUcaWG4s7fJYie7',
    ),
    Covid(
      name: 'ศูนย์การแพทย์ฉุกเฉิน กทม.',
      website: 'http://www.msdbangkok.go.th/news%20Erawan%20flood.html',
      facebook: 'ศูนย์เอราวัณ กรุงเทพมหานคร',
      mobile: '1646',
      image: 'f5.jpg',
      location:
          'https://goo.gl/maps/aDQmkam5xnoAEynm7',
    ),
    Covid(
      name: 'กรมสุขภาพจิต',
      website: 'https://www.dmh.go.th//',
      facebook: 'กรมสุขภาพจิต กระทรวงสาธารณสุข',
      mobile: '1323',
      image: 'f6.jpg',
      location:
          'https://goo.gl/maps/j6oRQPpusdkzfZhw9',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        title: Text(
          'สายด่วนสำคัญช่วงโควิด',
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/Covid19.jpg'
            ),
          ),
          Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                height: 10.0,
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
    );
  }
}
