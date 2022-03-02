import 'package:flutter/material.dart';
import 'screenone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My App",
        home: MyHomePage(),
        theme: ThemeData(primarySwatch: Colors.amber));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();
  String? value = "";
  TextEditingController _fistname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _add = TextEditingController();
  TextEditingController _edu = TextEditingController();
  TextEditingController _grade = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _id = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _fistname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'First name',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _lname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Last name',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _add,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Address',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _edu,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Educational Background',
                        prefixIcon: Icon(Icons.school),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _grade,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Grade',
                        prefixIcon: Icon(Icons.school_sharp),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _mobile,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Mobile',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      //controller: _id,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Login ID',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter password',
                        prefixIcon: Icon(Icons.vpn_key),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Confirm Password',
                        prefixIcon: Icon(Icons.vpn_key),
                      ),
                    ),
                  ),
                  Text(
                    "โปรดเลือกโครงการที่ต้องการสมัคร",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem<String>(
                                value: "1",
                                child: Center(
                                  child: Text("โครงการรับตรงสอบข้อเขียน"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "2",
                                child: Center(
                                  child: Text("โครงการโควตาพื้นที่"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "3",
                                child: Center(
                                  child: Text("โครงการ portfolio"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "4",
                                child: Center(
                                  child: Text("โครงการเรียนดี"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "5",
                                child: Center(
                                  child: Text("โครงการรับตรงใช้คะแนน GAT/PAT"),
                                ),
                              ),
                            ],
                            onChanged: (_value) => {
                              print(_value.toString()),
                            },
                            hint: Text('โปรดเลือกโครงการที่ต้องการสมัคร'),
                          ),
                        ),
                        Text('$value'),
                        Text(
                          "เลือกสาขาที่ต้องการสมัคร",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem<String>(
                                value: "สาขาวิชาเทคโนโลยีสารสนเทศ (IT)",
                                child: Center(
                                  child: Text("สาขาวิชาเทคโนโลยีสารสนเทศ (IT)"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INE)"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาเทคโนโลยีสารสนเทศ (ITI) หลักสูตร 2 ปี",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาเทคโนโลยีสารสนเทศ (ITI) หลักสูตร 2 ปี"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET) หลักสูตร 2 ปี",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาวิศวกรรมสารสนเทศและเครือข่าย (INET) หลักสูตร 2 ปี"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาวิศวกรรมอุตสาหการและการจัดการ (IEM)"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MM)"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาการจัดการอุตสาหกรรม (IMT) หลักสูตร 2 ปี",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาการจัดการอุตสาหกรรม (IMT) หลักสูตร 2 ปี"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT) หลักสูตร 2 ปี",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาเทคโนโลยีเครื่องกลและกระบวนการผลิต(MMT) หลักสูตร 2 ปี"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFE)"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET) หลักสูตร 2 ปี",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาวิศวกรรมเกษตรและอาหาร (AFET) หลักสูตร 2 ปี"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CA)"),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value:
                                    "สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM) หลักสูตร 2 ปี",
                                child: Center(
                                  child: Text(
                                      "สาขาวิชาคอมพิวเตอร์ช่วยออกแบบและบริหารงานก่อสร้าง (CDM) หลักสูตร 2 ปี"),
                                ),
                              ),
                            ],
                            onChanged: (_value) => {
                              print(_value.toString()),
                              setState(() {
                                value = _value;
                              }),
                            },
                            hint: Text('โปรดเลือดสาขาที่ต้องการสมัคร'),
                          ),
                        ),
                        Text('$value'),
                      ],
                    ),
                  ),
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => screenone(
                                  firstname: _fistname.text,
                                  lastname: _lname.text,
                                  address: _add.text,
                                  education: _edu.text,
                                  grade: _grade.text,
                                  moblie: _mobile.text,
                                  email: _email.text,
                                  id: _id.text)),
                        );
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Sign up",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Already have an Account ?",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
