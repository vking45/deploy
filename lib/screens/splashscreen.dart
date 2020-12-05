import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1, milliseconds: 50), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    _determineScreen() {
      if (_width <= 375 && _height <= 667) {
        return _iphone678();
      } else if (_width <= 390 && _height >= 812 && _height <= 896) {
        return _iphoneX();
      } else if (_width >= 410 && _height <= 745) {
        return _iphone678plus();
      } else if (_width >= 410 && _height >= 736 && _height <= 900) {
        return _pixel3XL();
      } else if (_width >= 500 || _height >= 900) {
        return _ipad();
      } else {
        return _iphone678();
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: _determineScreen(),
    );
  }

  _iphone678() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(-20.0, 100.0),
          child:
              // Adobe XD layer: 'WhatsApp_Image_2020…' (shape)
              Container(
            width: 400.0,
            height: 400.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img-1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _iphoneX() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(-24.0, 148.0),
          child:
              // Adobe XD layer: 'WhatsApp_Image_2020…' (shape)
              Container(
            width: 400.0,
            height: 400.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img-1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _iphone678plus() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(-33.0, 100.0),
          child:
              // Adobe XD layer: 'WhatsApp_Image_2020…' (shape)
              Container(
            width: 500.0,
            height: 500.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img-1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _pixel3XL() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(-28.0, 152.0),
          child:
              // Adobe XD layer: 'WhatsApp_Image_2020…' (shape)
              Container(
            width: 450.0,
            height: 450.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img-1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _ipad() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(765.0, 189.0),
          child:
              // Adobe XD layer: 'WhatsApp_Image_2020…' (shape)
              Container(
            width: 500.0,
            height: 500.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img-1.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
