import 'package:clubbspots/services/apiservices.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void clubsetup() async {
    Map loadingdata = ModalRoute.of(context).settings.arguments;
    ClubData instance =
        ClubData(cname: loadingdata['cname'], curl: loadingdata['curlinit']);
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/client_home', arguments: {
      'cname': instance.cname,
      'cdesc': instance.cdesc,
      'cmaxcap': instance.cmaxcap,
      'ccurstr': instance.ccurstr,
      'cwaitstr': instance.cwaitstr,
      'updtime': instance.updtime,
      'cimg1': instance.cimg1,
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      this.clubsetup();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: Center(
        child: SpinKitRotatingPlain(
          color: Colors.white,
          size: 90.0,
        ),
      ),
    );
  }
}
