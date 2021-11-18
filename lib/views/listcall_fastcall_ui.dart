import 'package:flutter/material.dart';

class ListcallFastcallUI extends StatefulWidget {
  const ListcallFastcallUI({ Key? key }) : super(key: key);

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
          'สายด่วนสำคัญช่วงโควิด',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
    );
  }
}