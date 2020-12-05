import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
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
      } else if (_width >= 411 && _height >= 900) {
        return _ipad();
      } else {
        return _galaxys10();
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xff559bf6),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: FlatButton(
                    child: Text('Report'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/report', arguments: {
                        'cname': data['cname'],
                      });
                    },
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: _determineScreen(),
      ),
    );
  }

  _iphoneX() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(91.0, 138.0),
          child: SizedBox(
            width: 180.0,
            height: 180.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 180.0, 180.0),
                  size: Size(180.0, 180.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 180.0, 180.0),
                        size: Size(180.0, 180.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 180.0, 180.0),
                              size: Size(180.0, 180.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(0.0, 0.0, 180.0, 180.0),
                                    size: Size(180.0, 180.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromSize(
                                          bounds: Rect.fromLTWH(
                                              0.0, 0.0, 180.0, 180.0),
                                          size: Size(180.0, 180.0),
                                          pinLeft: true,
                                          pinRight: true,
                                          pinTop: true,
                                          pinBottom: true,
                                          child: Stack(
                                            children: <Widget>[
                                              Pinned.fromSize(
                                                bounds: Rect.fromLTWH(
                                                    0.0, 0.0, 180.0, 180.0),
                                                size: Size(180.0, 180.0),
                                                pinLeft: true,
                                                pinRight: true,
                                                pinTop: true,
                                                pinBottom: true,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromSize(
                                                      bounds: Rect.fromLTWH(0.0,
                                                          0.0, 180.0, 180.0),
                                                      size: Size(180.0, 180.0),
                                                      pinLeft: true,
                                                      pinRight: true,
                                                      pinTop: true,
                                                      pinBottom: true,
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Pinned.fromSize(
                                                            bounds:
                                                                Rect.fromLTWH(
                                                                    0.0,
                                                                    0.0,
                                                                    180.0,
                                                                    180.0),
                                                            size: Size(
                                                                180.0, 180.0),
                                                            pinLeft: true,
                                                            pinRight: true,
                                                            pinTop: true,
                                                            pinBottom: true,
                                                            child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                Pinned.fromSize(
                                                                  bounds: Rect
                                                                      .fromLTWH(
                                                                          0.0,
                                                                          0.0,
                                                                          180.0,
                                                                          180.0),
                                                                  size: Size(
                                                                      180.0,
                                                                      180.0),
                                                                  pinLeft: true,
                                                                  pinRight:
                                                                      true,
                                                                  pinTop: true,
                                                                  pinBottom:
                                                                      true,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius: BorderRadius.all(Radius.elliptical(
                                                                          9999.0,
                                                                          9999.0)),
                                                                      color: const Color(
                                                                          0xffffffff),
                                                                      border: Border.all(
                                                                          width:
                                                                              1.0,
                                                                          color:
                                                                              const Color(0xff707070)),
                                                                      image:
                                                                          DecorationImage(
                                                                        image: (data['cimg1'] ==
                                                                                null)
                                                                            ? AssetImage('assets/img-1.png')
                                                                            : NetworkImage(data['cimg1']),
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(41.0, 73.0),
          child: Text(
            data['cname'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 37,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(41.0, 347.0),
          child: Text(
            data['cdesc'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(30.5, 523.0),
          child: SizedBox(
            width: 300.0,
            height: 194.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 53.5, 300.0, 1.0),
                  size: Size(300.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_3426h0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 193.5, 300.0, 1.0),
                  size: Size(300.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_t9z29w,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(83.5, 31.0, 148.0, 18.0),
                  size: Size(300.0, 193.5),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Last Updated at ' + data['updtime'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(58.5, 0.0, 198.6, 36.0),
                  size: Size(300.0, 193.5),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(150.0, 4.0, 48.6, 30.7),
                        size: Size(198.6, 36.0),
                        child: Transform.rotate(
                          angle: 3.1416,
                          child:
                              // Adobe XD layer: 'van' (group)
                              Stack(
                            children: <Widget>[
                              SvgPicture.string(
                                _svg_ke26pv,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 36.0),
                        size: Size(198.6, 36.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Live Count',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(41.5, 145.0, 229.0, 40.0),
                  size: Size(300.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.0, 175.0, 36.0),
                        size: Size(229.0, 40.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Max Capacity',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(189.0, 0.0, 40.0, 40.0),
                        size: Size(229.0, 40.0),
                        child:
                            // Adobe XD layer: 'speedometer (1)' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_kispbq,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(138.0, 601.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(138.0, 453.0),
          child: SizedBox(
            width: 100.0,
            height: 70.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 100.0, 70.0),
                  size: Size(100.0, 70.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      color: const Color(0xff559bf6),
                      border: Border.all(
                          width: 4.0, color: const Color(0xffffffff)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 6),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(28.0, 9.0, 43.0, 53.0),
                  size: Size(100.0, 70.0),
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Text(
                    data['ccurstr'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(162.0, 610.0),
          child: Text(
            data['cmaxcap'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  _ipad() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(153.0, 57.0),
          child: Text(
            data['cname'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 60,
              color: const Color(0xffffffff),
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(357.0, 180.0),
          child: Container(
            width: 350.0,
            height: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              image: DecorationImage(
                image: (data['cimg1'] == null)
                    ? AssetImage('assets/img-1.png')
                    : NetworkImage(data['cimg1']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(75.0, 178.0),
          child: Container(
            width: 350.0,
            height: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(209.0, 178.0),
          child: Container(
            width: 350.0,
            height: 350.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(184.5, 789.5),
          child: SvgPicture.string(
            _svg_sb4a7e,
            allowDrawingOutsideViewBox: true,
          ),
        ),
        Transform.translate(
          offset: Offset(312.0, 766.0),
          child: Text(
            'Last Updated at ' + data['updtime'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(344.0, 637.0),
          child: SizedBox(
            width: 80.0,
            height: 80.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 80.0, 80.0),
                  size: Size(80.0, 80.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff559bf6),
                      border: Border.all(
                          width: 5.0, color: const Color(0xffffffff)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 6),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(19.0, 12.0, 42.0, 53.0),
                  size: Size(80.0, 80.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    data['cmaxcap'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(225.0, 897.0),
          child: Text(
            'Max Capacity',
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 50,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(344.0, 826.0),
          child: SizedBox(
            width: 80.0,
            height: 80.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 80.0, 80.0),
                  size: Size(80.0, 80.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xff559bf6),
                      border: Border.all(
                          width: 5.0, color: const Color(0xffffffff)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 6),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(19.0, 12.0, 42.0, 53.0),
                  size: Size(80.0, 80.0),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    data['ccurstr'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(185.0, 546.0),
          child: Text(
            data['cdesc'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 20,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(253.0, 714.0),
          child: SizedBox(
            width: 302.0,
            height: 60.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 233.0, 60.0),
                  size: Size(301.6, 60.0),
                  pinLeft: true,
                  pinTop: true,
                  pinBottom: true,
                  fixedWidth: true,
                  child: Text(
                    'Live Count',
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 50,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(253.0, 20.0, 48.6, 30.7),
                  size: Size(301.6, 60.0),
                  child: Transform.rotate(
                    angle: 3.1416,
                    child:
                        // Adobe XD layer: 'van' (group)
                        Stack(
                      children: <Widget>[
                        SvgPicture.string(
                          _svg_mhr1w7,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(524.0, 909.0),
          child:
              // Adobe XD layer: 'speedometer (1)' (group)
              SizedBox(
            width: 40.0,
            height: 40.0,
            child: Stack(
              children: <Widget>[
                SvgPicture.string(
                  _svg_kispbq,
                  allowDrawingOutsideViewBox: true,
                ),
              ],
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
          offset: Offset(111.0, 132.0),
          child: Container(
            width: 190.0,
            height: 190.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              image: DecorationImage(
                image: (data['cimg1'] == null)
                    ? AssetImage('assets/img-1.png')
                    : NetworkImage(data['cimg1']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(61.0, 71.0),
          child: Text(
            data['cname'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 37,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(62.0, 349.0),
          child: Text(
            data['cdesc'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(35.5, 531.1),
          child: SizedBox(
            width: 340.0,
            height: 205.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 56.2, 340.0, 1.0),
                  size: Size(340.0, 204.9),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_na93zl,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 204.9, 340.0, 1.0),
                  size: Size(340.0, 204.9),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_2311by,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(105.5, 32.7, 148.0, 18.0),
                  size: Size(340.0, 204.9),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Last Updated at ' + data['updtime'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(98.5, 0.0, 198.6, 36.0),
                  size: Size(340.0, 204.9),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(150.0, 4.0, 48.6, 30.7),
                        size: Size(198.6, 36.0),
                        child: Transform.rotate(
                          angle: 3.1416,
                          child:
                              // Adobe XD layer: 'van' (group)
                              Stack(
                            children: <Widget>[
                              SvgPicture.string(
                                _svg_wt3swx,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 36.0),
                        size: Size(198.6, 36.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Live Count',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(49.5, 156.4, 242.0, 40.0),
                  size: Size(340.0, 204.9),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.0, 175.0, 36.0),
                        size: Size(242.0, 40.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Max Capacity',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(195.0, 0.0, 47.0, 40.0),
                        size: Size(242.0, 40.0),
                        child:
                            // Adobe XD layer: 'speedometer (1)' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_by43si,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(156.0, 621.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(156.0, 459.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(185.0, 468.0),
          child: Text(
            data['ccurstr'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(181.0, 630.0),
          child: Text(
            data['cmaxcap'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  _iphone678() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(39.0, 295.0),
          child: Text(
            data['cdesc'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(113.0, 119.0),
          child: Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              image: DecorationImage(
                image: (data['cimg1'] == null)
                    ? AssetImage('assets/img-1.png')
                    : NetworkImage(data['cimg1']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(43.0, 54.0),
          child: Text(
            data['cname'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 37,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(47.5, 438.0),
          child: SizedBox(
            width: 280.0,
            height: 194.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 53.5, 280.0, 1.0),
                  size: Size(280.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_ql2w16,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 193.5, 280.0, 1.0),
                  size: Size(280.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_f608a,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(72.5, 31.0, 148.0, 18.0),
                  size: Size(280.0, 193.5),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Last Updated at ' + data['updtime'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(38.5, 0.0, 198.6, 36.0),
                  size: Size(280.0, 193.5),
                  pinLeft: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(150.0, 4.0, 48.6, 30.7),
                        size: Size(198.6, 36.0),
                        child: Transform.rotate(
                          angle: 3.1416,
                          child:
                              // Adobe XD layer: 'van' (group)
                              Stack(
                            children: <Widget>[
                              SvgPicture.string(
                                _svg_wt3swx,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 36.0),
                        size: Size(198.6, 36.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Live Count',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(30.5, 145.0, 220.0, 40.0),
                  size: Size(280.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.0, 175.0, 36.0),
                        size: Size(220.0, 40.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Max Capacity',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(183.5, 0.0, 36.5, 40.0),
                        size: Size(220.0, 40.0),
                        child:
                            // Adobe XD layer: 'speedometer (1)' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_1iqkfs,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(138.0, 369.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(138.0, 516.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(167.0, 378.0),
          child: Text(
            data['ccurstr'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(163.0, 525.0),
          child: Text(
            data['cmaxcap'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  _iphone678plus() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(117.0, 100.0),
          child: SizedBox(
            width: 180.0,
            height: 180.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 180.0, 180.0),
                  size: Size(180.0, 180.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                      image: DecorationImage(
                        image: (data['cimg1'] == null)
                            ? AssetImage('assets/img-1.png')
                            : NetworkImage(data['cimg1']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(62.0, 40.0),
          child: Text(
            data['cname'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 37,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(57.5, 471.0),
          child: SizedBox(
            width: 300.0,
            height: 194.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 53.5, 300.0, 1.0),
                  size: Size(300.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_3426h0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 193.5, 300.0, 1.0),
                  size: Size(300.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_t9z29w,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(83.5, 31.0, 148.0, 18.0),
                  size: Size(300.0, 193.5),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Last Updated at ' + data['updtime'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(58.5, 0.0, 198.6, 36.0),
                  size: Size(300.0, 193.5),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(150.0, 4.0, 48.6, 30.7),
                        size: Size(198.6, 36.0),
                        child: Transform.rotate(
                          angle: 3.1416,
                          child:
                              // Adobe XD layer: 'van' (group)
                              Stack(
                            children: <Widget>[
                              SvgPicture.string(
                                _svg_ke26pv,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 36.0),
                        size: Size(198.6, 36.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Live Count',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(41.5, 145.0, 229.0, 40.0),
                  size: Size(300.0, 193.5),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.0, 175.0, 36.0),
                        size: Size(229.0, 40.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Max Capacity',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(189.0, 0.0, 40.0, 40.0),
                        size: Size(229.0, 40.0),
                        child:
                            // Adobe XD layer: 'speedometer (1)' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_kispbq,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(51.0, 307.0),
          child: Text(
            data['cdesc'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(157.0, 400.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(157.0, 550.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(186.0, 409.0),
          child: Text(
            data['ccurstr'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(182.0, 559.0),
          child: Text(
            data['cmaxcap'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  _galaxys10() {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: Offset(37.0, 76.0),
          child: Text(
            data['cname'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 37,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(100.0, 138.0),
          child: Container(
            width: 160.0,
            height: 160.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              image: DecorationImage(
                image: (data['cimg1'] == null)
                    ? AssetImage('assets/img-1.png')
                    : NetworkImage(data['cimg1']),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(28.0, 330.0),
          child: Text(
            data['cdesc'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(30.5, 506.1),
          child: SizedBox(
            width: 302.0,
            height: 205.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(2.0, 56.2, 300.0, 1.0),
                  size: Size(302.0, 204.9),
                  pinLeft: true,
                  pinRight: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_pnsksf,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 204.9, 300.0, 1.0),
                  size: Size(302.0, 204.9),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: SvgPicture.string(
                    _svg_vx46yu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(84.5, 32.7, 148.0, 18.0),
                  size: Size(302.0, 204.9),
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Text(
                    'Last Updated at ' + data['updtime'],
                    style: TextStyle(
                      fontFamily: 'Tahoma',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(77.5, 0.0, 198.6, 36.0),
                  size: Size(302.0, 204.9),
                  pinRight: true,
                  pinTop: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(150.0, 4.0, 48.6, 30.7),
                        size: Size(198.6, 36.0),
                        child: Transform.rotate(
                          angle: 3.1416,
                          child:
                              // Adobe XD layer: 'van' (group)
                              Stack(
                            children: <Widget>[
                              SvgPicture.string(
                                _svg_wt3swx,
                                allowDrawingOutsideViewBox: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 140.0, 36.0),
                        size: Size(198.6, 36.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Live Count',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(38.5, 156.4, 232.0, 40.0),
                  size: Size(302.0, 204.9),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.0, 175.0, 36.0),
                        size: Size(232.0, 40.0),
                        pinLeft: true,
                        pinTop: true,
                        pinBottom: true,
                        fixedWidth: true,
                        child: Text(
                          'Max Capacity',
                          style: TextStyle(
                            fontFamily: 'Tahoma',
                            fontSize: 30,
                            color: const Color(0xffffffff),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(185.0, 0.0, 47.0, 40.0),
                        size: Size(232.0, 40.0),
                        child:
                            // Adobe XD layer: 'speedometer (1)' (group)
                            Stack(
                          children: <Widget>[
                            SvgPicture.string(
                              _svg_by43si,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(132.0, 438.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(132.0, 598.0),
          child: Container(
            width: 100.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color(0xff559bf6),
              border: Border.all(width: 4.0, color: const Color(0xffffffff)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 6),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: Offset(161.0, 447.0),
          child: Text(
            data['ccurstr'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Transform.translate(
          offset: Offset(155.0, 607.0),
          child: Text(
            data['cmaxcap'],
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

const String _svg_3426h0 =
    '<svg viewBox="30.5 576.5 300.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(30.5, 576.5)" d="M 0 0 L 300 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_t9z29w =
    '<svg viewBox="30.5 716.5 300.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(30.5, 716.5)" d="M 0 0 L 300 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_ke26pv =
    '<svg viewBox="374.0 70.0 48.6 30.7" ><path transform="translate(374.0, 70.0)" d="M 45.47650909423828 0 C 43.39450836181641 0 22.58050918579102 0 18.93650817871094 0 C 15.29350852966309 0 8.346508026123047 11.88197803497314 8.346508026123047 11.88197803497314 C 8.346508026123047 11.88197803497314 4.366508007049561 12.76609992980957 1.76550829410553 14.83391380310059 C -0.8364917039871216 16.90438079833984 0.2065082788467407 25.18359184265137 0.2065082788467407 25.18359184265137 L 4.239507675170898 25.18359184265137 C 4.239507675170898 21.75181198120117 6.336507797241211 18.97086715698242 8.920507431030273 18.97086715698242 C 11.50950717926025 18.97086715698242 13.60550689697266 21.75181198120117 13.60550689697266 25.18359184265137 L 32.92650604248047 25.18359184265137 C 32.92650604248047 21.75181198120117 35.02350616455078 18.97086715698242 37.60750579833984 18.97086715698242 C 40.19950485229492 18.97086715698242 42.29450607299805 21.75181198120117 42.29450607299805 25.18359184265137 L 48.60450744628906 25.18359184265137 L 48.60450744628906 10.00636196136475 C 48.59950637817383 10.00504016876221 47.55850601196289 0 45.47650909423828 0 Z M 3.859508037567139 17.80573272705078 L 1.702507972717285 17.80573272705078 L 1.702507972717285 15.99374580383301 L 3.858507633209229 15.99374580383301 L 3.859508037567139 17.80573272705078 L 3.859508037567139 17.80573272705078 Z M 23.94850730895996 9.698843002319336 L 12.43450832366943 9.698843002319336 C 12.43450832366943 9.698843002319336 16.53650856018066 2.803478717803955 18.48550796508789 2.803478717803955 C 20.43650817871094 2.803478717803955 23.94950866699219 2.803478717803955 23.94950866699219 2.803478717803955 L 23.94950866699219 9.698843002319336 L 23.94850730895996 9.698843002319336 Z M 35.3325080871582 9.698843002319336 L 26.29350852966309 9.698843002319336 L 26.29350852966309 2.803478717803955 L 35.3325080871582 2.803478717803955 L 35.3325080871582 9.698843002319336 Z M 37.80850601196289 9.698843002319336 L 37.8065071105957 2.803478717803955 L 44.83050918579102 2.803478717803955 L 46.00251007080078 9.698843002319336 L 37.80850601196289 9.698843002319336 Z M 47.29250717163086 21.42308235168457 L 46.56350708007813 21.42308235168457 L 46.56350708007813 10.00503826141357 L 47.29250717163086 10.00503826141357 L 47.29250717163086 21.42308235168457 Z M 8.811508178710938 19.65218925476074 C 6.50950813293457 19.65218925476074 4.639508247375488 22.12428665161133 4.639508247375488 25.17961502075195 C 4.639508247375488 28.23626899719238 6.508508205413818 30.71101951599121 8.811508178710938 30.71101951599121 C 11.11750793457031 30.71101951599121 12.98250770568848 28.23626899719238 12.98250770568848 25.17961502075195 C 12.98150825500488 22.12693786621094 11.1145076751709 19.65218925476074 8.811508178710938 19.65218925476074 Z M 8.811508178710938 27.60531616210938 C 7.802508354187012 27.60531616210938 6.982508182525635 26.51706695556641 6.982508182525635 25.17961502075195 C 6.982508182525635 23.84083557128906 7.803508281707764 22.75523376464844 8.811508178710938 22.75523376464844 C 9.823508262634277 22.75523376464844 10.64150810241699 23.84083557128906 10.64150810241699 25.17961502075195 C 10.64150810241699 26.51839065551758 9.820508003234863 27.60531616210938 8.811508178710938 27.60531616210938 Z M 37.47750854492188 19.65218925476074 C 35.17450714111328 19.65218925476074 33.3065071105957 22.12428665161133 33.3065071105957 25.17961502075195 C 33.3065071105957 28.23626899719238 35.17450714111328 30.71101951599121 37.47750854492188 30.71101951599121 C 39.78250885009766 30.71101951599121 41.64850997924805 28.23626899719238 41.64850997924805 25.17961502075195 C 41.64750671386719 22.12693786621094 39.77950668334961 19.65218925476074 37.47750854492188 19.65218925476074 Z M 37.47850799560547 27.60531616210938 C 36.46850967407227 27.60531616210938 35.64950942993164 26.51706695556641 35.64950942993164 25.17961502075195 C 35.64950942993164 23.84083557128906 36.46850967407227 22.75523376464844 37.47850799560547 22.75523376464844 C 38.48650741577148 22.75523376464844 39.3075065612793 23.84083557128906 39.3075065612793 25.17961502075195 C 39.3065071105957 26.51706695556641 38.48650741577148 27.60531616210938 37.47850799560547 27.60531616210938 Z M 13.89950752258301 25.69392013549805 L 33.1815071105957 25.69392013549805 L 33.1815071105957 27.50325965881348 L 13.89950752258301 27.50325965881348 L 13.89950752258301 25.69392013549805 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kispbq =
    '<svg viewBox="0.0 35.2 40.0 40.0" ><path transform="translate(-78.98, 0.0)" d="M 97.80792236328125 35.15399932861328 C 93.29058074951172 35.45457077026367 89.05432891845703 37.48937606811523 85.67300415039063 40.98257446289063 L 90.90237426757813 47.04433822631836 C 92.87034606933594 45.14519119262695 95.25987243652344 43.99751663208008 97.80792236328125 43.72764587402344 L 97.80792236328125 35.15399932861328 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-0.01, -77.82)" d="M 10.27491569519043 126.7836761474609 L 5.045618534088135 120.7220001220703 C 2.029524803161621 124.6404647827148 0.2719467282295227 129.5513916015625 0.01100921630859375 134.7890472412109 L 7.407649993896484 134.7890472412109 C 7.642024993896484 131.8348693847656 8.634212493896484 129.0647125244141 10.27491569519043 126.7836761474609 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-350.88, -77.82)" d="M 383.4783020019531 134.7890472412109 L 390.8749389648438 134.7890472412109 C 390.614013671875 129.5513916015625 388.8565063476563 124.6404647827148 385.84033203125 120.7220001220703 L 380.6110229492188 126.7836761474609 C 382.2517395019531 129.0646209716797 383.2439270019531 131.8348693847656 383.4783020019531 134.7890472412109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-369.17, -246.37)" d="M 401.7731018066406 306.0549926757813 C 401.6087951660156 308.147216796875 401.0937194824219 309.892333984375 400.4844970703125 311.2921142578125 C 401.0787963867188 312.3544921875 401.5742797851563 313.2523193359375 401.901611328125 313.8485717773438 C 402.7930297851563 315.4725036621094 402.5956726074219 317.5570373535156 401.421630859375 318.9180603027344 C 401.1365356445313 319.2485046386719 400.8109130859375 319.5147705078125 400.4580078125 319.7115478515625 L 401.6759033203125 321.1233825683594 C 401.9051208496094 321.3890991210938 402.2055969238281 321.5219421386719 402.5059814453125 321.5219421386719 C 402.8064575195313 321.5219421386719 403.1068420410156 321.3890991210938 403.3359985351563 321.1233825683594 C 406.8456726074219 317.0554809570313 408.8921508789063 311.7472839355469 409.1722412109375 306.0549926757813 L 401.7731018066406 306.0549926757813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, -246.37)" d="M 7.399218559265137 306.0549621582031 L 0 306.0549621582031 C 0.280078113079071 311.7472534179688 2.326562643051147 317.0554809570313 5.836172103881836 321.1234436035156 C 6.065390586853027 321.38916015625 6.365781307220459 321.5220031738281 6.666172027587891 321.5220031738281 C 6.966562747955322 321.5220031738281 7.267031669616699 321.3890686035156 7.496250152587891 321.1234436035156 L 11.05187511444092 317.0015869140625 C 11.51023483276367 316.4701538085938 11.51023483276367 315.6085815429688 11.05187511444092 315.0771789550781 C 10.12398529052734 314.0015869140625 7.78671932220459 310.9902648925781 7.399219512939453 306.0549621582031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-249.83, 0.0)" d="M 283.1349182128906 40.98257446289063 C 279.7536010742188 37.48928451538086 275.517333984375 35.45457077026367 271 35.15399932861328 L 271 43.72764587402344 C 273.5479736328125 43.99751663208008 275.9375610351563 45.14519119262695 277.9055480957031 47.04433822631836 L 283.1349182128906 40.98257446289063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-192.57, -190.11)" d="M 215.1755065917969 245.4424285888672 C 213.7397918701172 243.7781982421875 211.4037017822266 243.7781982421875 209.9680023193359 245.4424285888672 C 208.5322875976563 247.1066589355469 208.5323028564453 249.8146057128906 209.9680023193359 251.4788360595703 C 211.7817535400391 253.581298828125 220.6954193115234 260.1786499023438 221.7058868408203 260.9239501953125 C 222.1692504882813 261.2658081054688 222.7752685546875 261.1886596679688 223.1636962890625 260.7384643554688 C 223.5520629882813 260.2882995605469 223.6186218261719 259.5858154296875 223.3236999511719 259.0486145019531 C 222.6806640625 257.8773803710938 216.9892578125 247.5447845458984 215.1755065917969 245.4424285888672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ql2w16 =
    '<svg viewBox="30.5 576.5 280.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(30.5, 576.5)" d="M 0 0 L 280 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_f608a =
    '<svg viewBox="30.5 716.5 280.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(30.5, 716.5)" d="M 0 0 L 280 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_wt3swx =
    '<svg viewBox="0.0 0.0 48.6 30.7" ><path  d="M 45.47650909423828 0 C 43.39450836181641 0 22.58050918579102 0 18.93650817871094 0 C 15.29350852966309 0 8.346508026123047 11.88197803497314 8.346508026123047 11.88197803497314 C 8.346508026123047 11.88197803497314 4.366508007049561 12.76609992980957 1.76550829410553 14.83391380310059 C -0.8364917039871216 16.90438079833984 0.2065082788467407 25.18359184265137 0.2065082788467407 25.18359184265137 L 4.239507675170898 25.18359184265137 C 4.239507675170898 21.75181198120117 6.336507797241211 18.97086715698242 8.920507431030273 18.97086715698242 C 11.50950717926025 18.97086715698242 13.60550689697266 21.75181198120117 13.60550689697266 25.18359184265137 L 32.92650604248047 25.18359184265137 C 32.92650604248047 21.75181198120117 35.02350616455078 18.97086715698242 37.60750579833984 18.97086715698242 C 40.19950485229492 18.97086715698242 42.29450607299805 21.75181198120117 42.29450607299805 25.18359184265137 L 48.60450744628906 25.18359184265137 L 48.60450744628906 10.00636196136475 C 48.59950637817383 10.00504016876221 47.55850601196289 0 45.47650909423828 0 Z M 3.859508037567139 17.80573272705078 L 1.702507972717285 17.80573272705078 L 1.702507972717285 15.99374580383301 L 3.858507633209229 15.99374580383301 L 3.859508037567139 17.80573272705078 L 3.859508037567139 17.80573272705078 Z M 23.94850730895996 9.698843002319336 L 12.43450832366943 9.698843002319336 C 12.43450832366943 9.698843002319336 16.53650856018066 2.803478717803955 18.48550796508789 2.803478717803955 C 20.43650817871094 2.803478717803955 23.94950866699219 2.803478717803955 23.94950866699219 2.803478717803955 L 23.94950866699219 9.698843002319336 L 23.94850730895996 9.698843002319336 Z M 35.3325080871582 9.698843002319336 L 26.29350852966309 9.698843002319336 L 26.29350852966309 2.803478717803955 L 35.3325080871582 2.803478717803955 L 35.3325080871582 9.698843002319336 Z M 37.80850601196289 9.698843002319336 L 37.8065071105957 2.803478717803955 L 44.83050918579102 2.803478717803955 L 46.00251007080078 9.698843002319336 L 37.80850601196289 9.698843002319336 Z M 47.29250717163086 21.42308235168457 L 46.56350708007813 21.42308235168457 L 46.56350708007813 10.00503826141357 L 47.29250717163086 10.00503826141357 L 47.29250717163086 21.42308235168457 Z M 8.811508178710938 19.65218925476074 C 6.50950813293457 19.65218925476074 4.639508247375488 22.12428665161133 4.639508247375488 25.17961502075195 C 4.639508247375488 28.23626899719238 6.508508205413818 30.71101951599121 8.811508178710938 30.71101951599121 C 11.11750793457031 30.71101951599121 12.98250770568848 28.23626899719238 12.98250770568848 25.17961502075195 C 12.98150825500488 22.12693786621094 11.1145076751709 19.65218925476074 8.811508178710938 19.65218925476074 Z M 8.811508178710938 27.60531616210938 C 7.802508354187012 27.60531616210938 6.982508182525635 26.51706695556641 6.982508182525635 25.17961502075195 C 6.982508182525635 23.84083557128906 7.803508281707764 22.75523376464844 8.811508178710938 22.75523376464844 C 9.823508262634277 22.75523376464844 10.64150810241699 23.84083557128906 10.64150810241699 25.17961502075195 C 10.64150810241699 26.51839065551758 9.820508003234863 27.60531616210938 8.811508178710938 27.60531616210938 Z M 37.47750854492188 19.65218925476074 C 35.17450714111328 19.65218925476074 33.3065071105957 22.12428665161133 33.3065071105957 25.17961502075195 C 33.3065071105957 28.23626899719238 35.17450714111328 30.71101951599121 37.47750854492188 30.71101951599121 C 39.78250885009766 30.71101951599121 41.64850997924805 28.23626899719238 41.64850997924805 25.17961502075195 C 41.64750671386719 22.12693786621094 39.77950668334961 19.65218925476074 37.47750854492188 19.65218925476074 Z M 37.47850799560547 27.60531616210938 C 36.46850967407227 27.60531616210938 35.64950942993164 26.51706695556641 35.64950942993164 25.17961502075195 C 35.64950942993164 23.84083557128906 36.46850967407227 22.75523376464844 37.47850799560547 22.75523376464844 C 38.48650741577148 22.75523376464844 39.3075065612793 23.84083557128906 39.3075065612793 25.17961502075195 C 39.3065071105957 26.51706695556641 38.48650741577148 27.60531616210938 37.47850799560547 27.60531616210938 Z M 13.89950752258301 25.69392013549805 L 33.1815071105957 25.69392013549805 L 33.1815071105957 27.50325965881348 L 13.89950752258301 27.50325965881348 L 13.89950752258301 25.69392013549805 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1iqkfs =
    '<svg viewBox="0.0 0.0 36.5 40.0" ><path transform="translate(-79.56, -35.15)" d="M 96.74810791015625 35.15399932861328 C 92.62528991699219 35.45457077026367 88.75901794433594 37.48937606811523 85.67300415039063 40.98257446289063 L 90.44566345214844 47.04433822631836 C 92.24176025390625 45.14519119262695 94.42259216308594 43.99751663208008 96.74810791015625 43.72764587402344 L 96.74810791015625 35.15399932861328 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-0.01, -112.97)" d="M 9.378504753112793 126.7836761474609 L 4.60591459274292 120.7220001220703 C 1.853235244750977 124.6404647827148 0.2491574138402939 129.5513916015625 0.01100921630859375 134.7890472412109 L 6.761654853820801 134.7890472412109 C 6.975560665130615 131.8348693847656 7.881093978881836 129.0647125244141 9.378504753112793 126.7836761474609 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-353.47, -112.97)" d="M 383.2279052734375 134.7890472412109 L 389.9785461425781 134.7890472412109 C 389.7404174804688 129.5513916015625 388.1363830566406 124.6404647827148 385.3836364746094 120.7220001220703 L 380.6110229492188 126.7836761474609 C 382.1084594726563 129.0646209716797 383.0140075683594 131.8348693847656 383.2279052734375 134.7890472412109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-371.9, -281.52)" d="M 401.6582336425781 306.0549926757813 C 401.5082702636719 308.147216796875 401.0381774902344 309.892333984375 400.482177734375 311.2921142578125 C 401.0245666503906 312.3544921875 401.4767761230469 313.2523193359375 401.7755126953125 313.8485717773438 C 402.5890808105469 315.4725036621094 402.4089660644531 317.5570373535156 401.3374633789063 318.9180603027344 C 401.0772705078125 319.2485046386719 400.7800903320313 319.5147705078125 400.4580078125 319.7115478515625 L 401.5695190429688 321.1233825683594 C 401.7787170410156 321.3890991210938 402.0529479980469 321.5219421386719 402.3271179199219 321.5219421386719 C 402.6013488769531 321.5219421386719 402.87548828125 321.3890991210938 403.0846252441406 321.1233825683594 C 406.2877807617188 317.0554809570313 408.1555480957031 311.7472839355469 408.4111633300781 306.0549926757813 L 401.6582336425781 306.0549926757813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, -281.52)" d="M 6.752998828887939 306.0549621582031 L 0 306.0549621582031 C 0.2556171417236328 311.7472534179688 2.123369455337524 317.0554809570313 5.326462745666504 321.1234436035156 C 5.535662174224854 321.38916015625 5.809817790985107 321.5220031738281 6.083973407745361 321.5220031738281 C 6.358129501342773 321.5220031738281 6.632356643676758 321.3890686035156 6.841555595397949 321.1234436035156 L 10.08664608001709 317.0015869140625 C 10.50497436523438 316.4701538085938 10.50497436523438 315.6085815429688 10.08664608001709 315.0771789550781 C 9.239794731140137 314.0015869140625 7.106656551361084 310.9902648925781 6.752999305725098 306.0549621582031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-251.68, -35.15)" d="M 282.0751037597656 40.98257446289063 C 278.9890747070313 37.48928451538086 275.122802734375 35.45457077026367 271 35.15399932861328 L 271 43.72764587402344 C 273.325439453125 43.99751663208008 275.50634765625 45.14519119262695 277.3024291992188 47.04433822631836 L 282.0751037597656 40.98257446289063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-194.0, -225.26)" d="M 214.6266632080078 245.4424285888672 C 213.3163299560547 243.7781982421875 211.1842651367188 243.7781982421875 209.8739624023438 245.4424285888672 C 208.5636291503906 247.1066589355469 208.5636444091797 249.8146057128906 209.8739624023438 251.4788360595703 C 211.5293121337891 253.581298828125 219.6644897460938 260.1786499023438 220.5867004394531 260.9239501953125 C 221.0095977783203 261.2658081054688 221.5626831054688 261.1886596679688 221.9171905517578 260.7384643554688 C 222.2716369628906 260.2882995605469 222.3323822021484 259.5858154296875 222.0632171630859 259.0486145019531 C 221.4763488769531 257.8773803710938 216.2820129394531 247.5447845458984 214.6266632080078 245.4424285888672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_na93zl =
    '<svg viewBox="30.5 584.2 340.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(30.5, 584.23)" d="M 0 0 L 340.0379638671875 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_2311by =
    '<svg viewBox="30.5 733.0 340.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(30.5, 733.0)" d="M 0 0 L 340.0379638671875 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_by43si =
    '<svg viewBox="0.0 0.0 47.0 40.0" ><path transform="translate(-77.81, -35.15)" d="M 99.92957305908203 35.15399932861328 C 94.62242126464844 35.45457077026367 89.64551544189453 37.48937606811523 85.67299652099609 40.98257446289063 L 91.81666564941406 47.04433822631836 C 94.12871551513672 45.14519119262695 96.93602752685547 43.99751663208008 99.92957305908203 43.72764587402344 L 99.92957305908203 35.15399932861328 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-0.01, -112.97)" d="M 12.06943893432617 126.7836761474609 L 5.92586088180542 120.7220001220703 C 2.38243842124939 124.6404647827148 0.3175685405731201 129.5513916015625 0.01100921630859375 134.7890472412109 L 8.700865745544434 134.7890472412109 C 8.976218223571777 131.8348693847656 10.14187812805176 129.0647125244141 12.06943893432617 126.7836761474609 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-345.68, -112.97)" d="M 383.9796142578125 134.7890472412109 L 392.6694641113281 134.7890472412109 C 392.3629150390625 129.5513916015625 390.2981262207031 124.6404647827148 386.7546081542969 120.7220001220703 L 380.6109924316406 126.7836761474609 C 382.5386047363281 129.0646209716797 383.7042541503906 131.8348693847656 383.9796142578125 134.7890472412109 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-363.7, -281.52)" d="M 402.0030517578125 306.0549926757813 C 401.8099975585938 308.147216796875 401.2048645019531 309.892333984375 400.4891357421875 311.2921142578125 C 401.1873474121094 312.3544921875 401.7694702148438 313.2523193359375 402.1539916992188 313.8485717773438 C 403.2012939453125 315.4725036621094 402.9694213867188 317.5570373535156 401.5901184082031 318.9180603027344 C 401.2551879882813 319.2485046386719 400.8726196289063 319.5147705078125 400.4580078125 319.7115478515625 L 401.8888549804688 321.1233825683594 C 402.1581726074219 321.3890991210938 402.5111389160156 321.5219421386719 402.8640441894531 321.5219421386719 C 403.2170715332031 321.5219421386719 403.5699768066406 321.3890991210938 403.8391723632813 321.1233825683594 C 407.9624938964844 317.0554809570313 410.3667602539063 311.7472839355469 410.6958312988281 306.0549926757813 L 402.0030517578125 306.0549926757813 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(0.0, -281.52)" d="M 8.69288444519043 306.0549621582031 L 0 306.0549621582031 C 0.3290464878082275 311.7472534179688 2.73333477973938 317.0554809570313 6.856558322906494 321.1234436035156 C 7.125853061676025 321.38916015625 7.478763580322266 321.5220031738281 7.831673622131348 321.5220031738281 C 8.184584617614746 321.5220031738281 8.537586212158203 321.3890686035156 8.806880950927734 321.1234436035156 L 12.98416519165039 317.0015869140625 C 13.52266407012939 316.4701538085938 13.52266407012939 315.6085815429688 12.98416519165039 315.0771789550781 C 11.89404487609863 314.0015869140625 9.148135185241699 310.9902648925781 8.692885398864746 306.0549621582031 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-246.13, -35.15)" d="M 285.2565612792969 40.98257446289063 C 281.2840576171875 37.48928451538086 276.30712890625 35.45457077026367 271 35.15399932861328 L 271 43.72764587402344 C 273.9934387207031 43.99751663208008 276.8008422851563 45.14519119262695 279.1128845214844 47.04433822631836 L 285.2565612792969 40.98257446289063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-189.72, -225.26)" d="M 216.2742309570313 245.4424285888672 C 214.5874938964844 243.7781982421875 211.8429870605469 243.7781982421875 210.1562805175781 245.4424285888672 C 208.4695434570313 247.1066589355469 208.4695434570313 249.8146057128906 210.1562805175781 251.4788360595703 C 212.2871398925781 253.581298828125 222.7592468261719 260.1786499023438 223.9463806152344 260.9239501953125 C 224.4907531738281 261.2658081054688 225.2027587890625 261.1886596679688 225.6590881347656 260.7384643554688 C 226.1153564453125 260.2882995605469 226.1935424804688 259.5858154296875 225.8470764160156 259.0486145019531 C 225.0915832519531 257.8773803710938 218.4050903320313 247.5447845458984 216.2742309570313 245.4424285888672 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sb4a7e =
    '<svg viewBox="184.5 789.5 400.0 170.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(184.5, 789.5)" d="M 0 0 L 400 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(184.5, 959.5)" d="M 0 0 L 400 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_mhr1w7 =
    '<svg viewBox="-398.0 301.0 48.6 30.7" ><path transform="translate(-398.0, 301.0)" d="M 45.47650909423828 0 C 43.39450836181641 0 22.58050918579102 0 18.93650817871094 0 C 15.29350852966309 0 8.346508026123047 11.88197803497314 8.346508026123047 11.88197803497314 C 8.346508026123047 11.88197803497314 4.366508007049561 12.76609992980957 1.76550829410553 14.83391380310059 C -0.8364917039871216 16.90438079833984 0.2065082788467407 25.18359184265137 0.2065082788467407 25.18359184265137 L 4.239507675170898 25.18359184265137 C 4.239507675170898 21.75181198120117 6.336507797241211 18.97086715698242 8.920507431030273 18.97086715698242 C 11.50950717926025 18.97086715698242 13.60550689697266 21.75181198120117 13.60550689697266 25.18359184265137 L 32.92650604248047 25.18359184265137 C 32.92650604248047 21.75181198120117 35.02350616455078 18.97086715698242 37.60750579833984 18.97086715698242 C 40.19950485229492 18.97086715698242 42.29450607299805 21.75181198120117 42.29450607299805 25.18359184265137 L 48.60450744628906 25.18359184265137 L 48.60450744628906 10.00636196136475 C 48.59950637817383 10.00504016876221 47.55850601196289 0 45.47650909423828 0 Z M 3.859508037567139 17.80573272705078 L 1.702507972717285 17.80573272705078 L 1.702507972717285 15.99374580383301 L 3.858507633209229 15.99374580383301 L 3.859508037567139 17.80573272705078 L 3.859508037567139 17.80573272705078 Z M 23.94850730895996 9.698843002319336 L 12.43450832366943 9.698843002319336 C 12.43450832366943 9.698843002319336 16.53650856018066 2.803478717803955 18.48550796508789 2.803478717803955 C 20.43650817871094 2.803478717803955 23.94950866699219 2.803478717803955 23.94950866699219 2.803478717803955 L 23.94950866699219 9.698843002319336 L 23.94850730895996 9.698843002319336 Z M 35.3325080871582 9.698843002319336 L 26.29350852966309 9.698843002319336 L 26.29350852966309 2.803478717803955 L 35.3325080871582 2.803478717803955 L 35.3325080871582 9.698843002319336 Z M 37.80850601196289 9.698843002319336 L 37.8065071105957 2.803478717803955 L 44.83050918579102 2.803478717803955 L 46.00251007080078 9.698843002319336 L 37.80850601196289 9.698843002319336 Z M 47.29250717163086 21.42308235168457 L 46.56350708007813 21.42308235168457 L 46.56350708007813 10.00503826141357 L 47.29250717163086 10.00503826141357 L 47.29250717163086 21.42308235168457 Z M 8.811508178710938 19.65218925476074 C 6.50950813293457 19.65218925476074 4.639508247375488 22.12428665161133 4.639508247375488 25.17961502075195 C 4.639508247375488 28.23626899719238 6.508508205413818 30.71101951599121 8.811508178710938 30.71101951599121 C 11.11750793457031 30.71101951599121 12.98250770568848 28.23626899719238 12.98250770568848 25.17961502075195 C 12.98150825500488 22.12693786621094 11.1145076751709 19.65218925476074 8.811508178710938 19.65218925476074 Z M 8.811508178710938 27.60531616210938 C 7.802508354187012 27.60531616210938 6.982508182525635 26.51706695556641 6.982508182525635 25.17961502075195 C 6.982508182525635 23.84083557128906 7.803508281707764 22.75523376464844 8.811508178710938 22.75523376464844 C 9.823508262634277 22.75523376464844 10.64150810241699 23.84083557128906 10.64150810241699 25.17961502075195 C 10.64150810241699 26.51839065551758 9.820508003234863 27.60531616210938 8.811508178710938 27.60531616210938 Z M 37.47750854492188 19.65218925476074 C 35.17450714111328 19.65218925476074 33.3065071105957 22.12428665161133 33.3065071105957 25.17961502075195 C 33.3065071105957 28.23626899719238 35.17450714111328 30.71101951599121 37.47750854492188 30.71101951599121 C 39.78250885009766 30.71101951599121 41.64850997924805 28.23626899719238 41.64850997924805 25.17961502075195 C 41.64750671386719 22.12693786621094 39.77950668334961 19.65218925476074 37.47750854492188 19.65218925476074 Z M 37.47850799560547 27.60531616210938 C 36.46850967407227 27.60531616210938 35.64950942993164 26.51706695556641 35.64950942993164 25.17961502075195 C 35.64950942993164 23.84083557128906 36.46850967407227 22.75523376464844 37.47850799560547 22.75523376464844 C 38.48650741577148 22.75523376464844 39.3075065612793 23.84083557128906 39.3075065612793 25.17961502075195 C 39.3065071105957 26.51706695556641 38.48650741577148 27.60531616210938 37.47850799560547 27.60531616210938 Z M 13.89950752258301 25.69392013549805 L 33.1815071105957 25.69392013549805 L 33.1815071105957 27.50325965881348 L 13.89950752258301 27.50325965881348 L 13.89950752258301 25.69392013549805 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pnsksf =
    '<svg viewBox="53.5 584.2 300.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(53.5, 584.23)" d="M 0 0 L 300 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
const String _svg_vx46yu =
    '<svg viewBox="51.5 733.0 300.0 1.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="6" stdDeviation="6"/></filter></defs><path transform="translate(51.5, 733.0)" d="M 0 0 L 300 0" fill="none" stroke="#ffffff" stroke-width="8" stroke-miterlimit="4" stroke-linecap="round" filter="url(#shadow)"/></svg>';
