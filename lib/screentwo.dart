import 'package:flutter/material.dart';
import 'screentree.dart';

class screentwo extends StatefulWidget {
  const screentwo({Key? key}) : super(key: key);

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'เลือกภาควิชาที่ต้องการสมัคร',
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
                            Text('ภาควิชาเทคโนโลยีสารสนเทศ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('ภาควิชาการจัดการอุตสาหกรรม',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('ภาควิชาวิศวกรรมเกษตรเพื่ออุตสาหกรรม',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('ภาควิชาการออกแบบและบริหารงานก่อสร้าง',
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
                        hintText: 'โปรดกรอกภาควิชาที่ต้องการเลือก',
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
                MaterialPageRoute(builder: (context) => screentree()),
              );
            },
            child: Text('เลือกหลักสูตรที่ต้องการสมัคร'),
          )
        ]),
      ),
    );
  }
}
