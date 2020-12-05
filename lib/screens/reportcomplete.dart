import 'package:flutter/material.dart';

class ReportCompletion extends StatefulWidget {
  @override
  _ReportCompletionState createState() => _ReportCompletionState();
}

class _ReportCompletionState extends State<ReportCompletion> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      body: Container(
          child: Padding(
        padding: EdgeInsets.only(top: 25),
        child: Center(
          child: Column(
            children: [
              Text(
                'Thanks for your concern',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              Text(
                'We\'ll look into right away',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  'Continue',
                  style: TextStyle(
                    fontFamily: 'Tahoma',
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
