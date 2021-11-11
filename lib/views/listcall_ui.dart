import 'package:flutter/material.dart';
import '../models/covid.dart';

class ListcallUI extends StatefulWidget {
  const ListcallUI({Key? key}) : super(key: key);

  @override
  _ListcallUIState createState() => _ListcallUIState();
}

class _ListcallUIState extends State<ListcallUI> {
  List<Covid> covid = [
    Covid(
      name: 'สำนักงานหลักประกันสุขภาพแห่งชาติ',
      website: 'https://www.nhso.go.th',
      facebook: 'สำนักงานหลักประกันสุขภาพแห่งชาติ',
      mobile: '1330',
      image: 'f1.jpg',
      location: 'https://goo.gl/maps/3whWtBQDWbBAcf1k7',
    ),
    Covid(
      name: 'กรมควบคุมโรค',
      website: 'https://ddc.moph.go.th/',
      facebook: 'กรมควบคุมโรค กระทรวงสาธารณสุข',
      mobile: '1422',
      image: 'f2.jpg',
      location: 'https://goo.gl/maps/3RvVQBvZkmbYhST4A',
    ),
    Covid(
      name: 'กรมการแพทย์',
      website: 'https://www.dms.go.th/',
      facebook: 'กรมการแพทย์',
      mobile: '1668',
      image: 'f3.jpg',
      location: 'https://goo.gl/maps/SJDPC67dcSKTN7vH7',
    ),
    Covid(
      name: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ',
      website: 'https://www.niems.go.th/1/Home/Main',
      facebook: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ -สพฉ.1669',
      mobile: '1669',
      image: 'f4.jpg',
      location: 'https://goo.gl/maps/3PsUcaWG4s7fJYie7',
    ),
    Covid(
      name: 'ศูนย์การแพทย์ฉุกเฉิน กทม.',
      website: 'http://www.msdbangkok.go.th/news%20Erawan%20flood.html',
      facebook: 'ศูนย์เอราวัณ กรุงเทพมหานคร',
      mobile: '1646',
      image: 'f5.jpg',
      location: 'https://goo.gl/maps/aDQmkam5xnoAEynm7',
    ),
    Covid(
      name: 'กรมสุขภาพจิต',
      website: 'https://www.dmh.go.th//',
      facebook: 'กรมสุขภาพจิต กระทรวงสาธารณสุข',
      mobile: '1323',
      image: 'f6.jpg',
      location: 'https://goo.gl/maps/j6oRQPpusdkzfZhw9',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        title: Text(
          'สายด่วนสำคัญCovid',
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 10.0,
            color: Colors.cyan[200],
          );
        },
        itemCount: covid.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            title: Text(
              covid[index].name,
            ),
            subtitle: Text(
              covid[index].mobile,
            ),
            leading: Image.asset(
              'assets/images/' + covid[index].image,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
            ),
          );
        },
      ),
    
    );
  }
}
