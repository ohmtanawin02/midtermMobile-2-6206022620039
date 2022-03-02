import 'package:flutter/material.dart';
import 'screentwo.dart';

class screenone extends StatefulWidget {
  const screenone({Key? key}) : super(key: key);

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'เลือกโครงการรับสมัคร',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.indigo.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 3))
                ]),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('โครงการรับตรงสอบข้อเขียน',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('โครงการโควต้าพื้นที่',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('โครงการ Portfolio',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('โครงการเรียนดี',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('โครงการรับตรงใช้คะแนน GAT/PAT',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        hintText: 'โปรดกรอกโครงการที่ต้องการสมัคร',
                        suffixIconConstraints:
                            BoxConstraints(minWidth: 0, minHeight: 0)),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screentwo()),
              );
            },
            child: Text('เลือกภาควิชา'),
          )
        ]),
      ),
    );
  }
}
