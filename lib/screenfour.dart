import 'package:flutter/material.dart';

class screenfour extends StatefulWidget {
  const screenfour({Key? key}) : super(key: key);

  @override
  State<screenfour> createState() => _screenfourState();
}

class _screenfourState extends State<screenfour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'เลือกสาขาที่ต้องการสมัคร',
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
                            Text('สาขาวิชาเทคโนโลยีสารสนเทศ (IT)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                'สาขาวิชาเทคโนโลยีสารสนเทศ (ITI) หลักสูตรต่อเนื่อง รับ ปวส.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                'สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET) หลักสูตรต่อเนื่อง รับ ปวส.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text('สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                'สาขาวิชาการจัดการอุตสาหกรรม (IMT)หลักสูตร ต่อเนื่อง รับ ปวส.',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600)),
                            Text(
                                'สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต (IMT)หลักสูตร ต่อเนื่อง รับ ปวส.',
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
                        hintText: 'โปรดกรอกหลักสูตรที่ต้องการเลือก',
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
            onPressed: () {},
            child: Text('เสร็จสิ้นการสมัคร'),
          )
        ]),
      ),
    );
  }
}
