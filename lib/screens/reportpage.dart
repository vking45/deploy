import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  final usercontroller = TextEditingController();
  final contactcontroller = TextEditingController();
  final issuecontroller = TextEditingController();
  Map data = {};

  @override
  void dispose() {
    usercontroller.dispose();
    contactcontroller.dispose();
    issuecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    Future<void> postData() async {
      var url =
          'https://clubbspots.pythonanywhere.com/reportsforconsideration/#post-generic-content-form';
      var response = await http.post(url, body: {
        'venture': data['cname'],
        'username': usercontroller.text,
        'contact': contactcontroller.text,
        'issue': issuecontroller.text,
      });
      print(response.statusCode);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff559bf6),
        centerTitle: true,
        title: Text(
          'Socially Distant',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Tahoma',
            fontWeight: FontWeight.bold,
            color: const Color(0xffffffff),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          child: Column(
            children: <Widget>[
              TextField(
                controller: usercontroller,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name',
                ),
              ),
              TextField(
                controller: contactcontroller,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Enter your contact number',
                  labelText: 'Contact Number',
                ),
              ),
              TextField(
                controller: issuecontroller,
                decoration: const InputDecoration(
                  icon: const Icon(Icons.assignment_late),
                  hintText: 'Please report accurate information',
                  labelText: 'Issue',
                ),
              ),
              RaisedButton(
                child: const Text('Submit'),
                onPressed: () async {
                  await postData();
                  Navigator.pushReplacementNamed(context, '/reportcomplete');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
