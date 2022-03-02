import 'package:flutter/material.dart';

class screenone extends StatelessWidget {
  String firstname, lastname, address, education, grade, moblie, email, id;

  screenone(
      {Key? key,
      required this.firstname,
      required this.lastname,
      required this.address,
      required this.education,
      required this.grade,
      required this.moblie,
      required this.email,
      required this.id})
      : super(key: key);

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
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('FISTNAME : $firstname'),
                Text('LASTNAME : $lastname'),
                Text('Address : $address'),
                Text('Education : $education'),
                Text('Grade : $grade'),
                Text('Moblie : $moblie'),
                Text('Email : $email'),
                Text('Login ID : $id'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
