import 'package:clubbspots/services/apiservices.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

List<ClubData> toRender = List<ClubData>();

Future<List<ClubData>> fetchClubs() async {
  Response response = await get(
      'https://clubbspots.pythonanywhere.com/clublistasventures?format=json');

  var clubs = List<ClubData>();
  if (response.statusCode == 200) {
    var clubsJson = json.decode(response.body);
    for (var clubJson in clubsJson) {
      clubs.add(ClubData.fromJson(clubJson));
    }
  }
  return clubs;
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    fetchClubs().then((value) {
      setState(() {
        toRender.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Icon(Icons.people),
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
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/search');
                })
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Expanded(
            child: ListView.builder(
              itemCount: toRender.length,
              itemBuilder: (context, int index) {
                return FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loading', arguments: {
                      'curlinit': toRender[index].curl.toString(),
                      'cname': toRender[index].cname.toString(),
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Stack(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(0.0, 18.0),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: SizedBox(
                              width: 414.0,
                              height: 130.0,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(0.0, 0.0, 414.0, 130.0),
                                    size: Size(414.0, 130.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(22.0),
                                        color: const Color(0xa1006fff),
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
                                    bounds:
                                        Rect.fromLTWH(29.0, 14.0, 235.0, 36.0),
                                    size: Size(414.0, 130.0),
                                    pinLeft: true,
                                    pinTop: true,
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child: Text(
                                      toRender[index].cname,
                                      style: TextStyle(
                                        fontFamily: 'Tahoma',
                                        fontSize: 26,
                                        color: const Color(0xffffffff),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(14.0, 68.0, 30.0, 30.0),
                                    size: Size(414.0, 130.0),
                                    child:
                                        // Adobe XD layer: 'route' (group)
                                        Stack(
                                      children: <Widget>[
                                        SvgPicture.string(
                                          _svg_w08nzq,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                        Transform.translate(
                                          offset: Offset(13.5, 27.7),
                                          child: Container(
                                            width: 1.2,
                                            height: 1.2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.elliptical(
                                                      9999.0, 9999.0)),
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(52.0, 74.0, 170.0, 48.0),
                                    size: Size(414.0, 130.0),
                                    pinLeft: true,
                                    pinBottom: true,
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child: Text(
                                      toRender[index].cdesc.substring(0, 25) +
                                          '...',
                                      style: TextStyle(
                                        fontFamily: 'Tahoma',
                                        fontSize: 18,
                                        color: const Color(0xbfffffff),
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(325.0, 45.0, 80.0, 80.0),
                                    size: Size(414.0, 130.0),
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    fixedWidth: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        image: DecorationImage(
                                          image: (toRender[index].cimg1 == null)
                                              ? AssetImage('assets/img-1.png')
                                              : NetworkImage(
                                                  toRender[index].cimg1),
                                          fit: BoxFit.cover,
                                        ),
                                        border: Border.all(
                                            width: 2.0,
                                            color: const Color(0xff707070)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}

const String _svg_w08nzq =
    '<svg viewBox="0.0 0.0 30.0 30.0" ><path  d="M 5.551406383514404 17.35451507568359 C 5.034785270690918 17.66096115112305 4.6875 18.22416496276855 4.6875 18.86717224121094 C 4.6875 19.83642959594727 5.476054668426514 20.62498474121094 6.4453125 20.62498474121094 C 7.209140777587891 20.62498474121094 7.860469341278076 20.13508224487305 8.102343559265137 19.45310974121094 L 12.65625 19.45310974121094 C 13.62550735473633 19.45310974121094 14.4140625 20.24166488647461 14.4140625 21.21092224121094 C 14.4140625 22.18017959594727 13.62550735473633 22.96873474121094 12.65625 22.96873474121094 L 5.625 22.96873474121094 C 4.009570121765137 22.96873474121094 2.6953125 24.28299140930176 2.6953125 25.89842224121094 C 2.6953125 27.51385307312012 4.009570121765137 28.82810974121094 5.625 28.82810974121094 L 11.484375 28.82810974121094 C 11.80798816680908 28.82810974121094 12.0703125 28.56578636169434 12.0703125 28.24217224121094 C 12.0703125 27.91855812072754 11.80798816680908 27.65623474121094 11.484375 27.65623474121094 L 5.625 27.65623474121094 C 4.655742168426514 27.65623474121094 3.8671875 26.86767959594727 3.8671875 25.89842224121094 C 3.8671875 24.92916488647461 4.655742168426514 24.14060974121094 5.625 24.14060974121094 L 12.65625 24.14060974121094 C 14.27167987823486 24.14060974121094 15.5859375 22.82635307312012 15.5859375 21.21092224121094 C 15.5859375 19.59549140930176 14.27167987823486 18.28123474121094 12.65625 18.28123474121094 L 8.102343559265137 18.28123474121094 C 7.96376895904541 17.89053153991699 7.690840244293213 17.56305122375488 7.339218616485596 17.35451507568359 L 11.81449222564697 10.01178169250488 C 12.5184965133667 8.953577995300293 12.890625 7.720531463623047 12.890625 6.445297241210938 C 12.890625 2.891351938247681 9.99925708770752 -1.52587890625e-05 6.4453125 -1.52587890625e-05 C 2.891367673873901 -1.52587890625e-05 0 2.891351938247681 0 6.445297241210938 C 0 7.720531463623047 0.3721289038658142 8.953577995300293 1.076132774353027 10.01178169250488 L 5.551406383514404 17.35451507568359 Z M 6.4453125 19.45310974121094 C 6.122226715087891 19.45310974121094 5.859375 19.19025802612305 5.859375 18.86717224121094 C 5.859375 18.54408645629883 6.122226715087891 18.28123474121094 6.4453125 18.28123474121094 C 6.768398284912109 18.28123474121094 7.03125 18.54408645629883 7.03125 18.86717224121094 C 7.03125 19.19025802612305 6.768398284912109 19.45310974121094 6.4453125 19.45310974121094 Z M 6.4453125 1.171860694885254 C 9.353086471557617 1.171860694885254 11.71875 3.537524700164795 11.71875 6.445298194885254 C 11.71875 7.492250919342041 11.41248035430908 8.503989219665527 10.83310508728027 9.371176719665527 C 10.82859325408936 9.377915382385254 10.82419967651367 9.384770393371582 10.81998062133789 9.391743659973145 L 6.445312023162842 16.56941795349121 C 6.445312023162842 16.56941795349121 2.062030792236328 9.377915382385254 2.05751895904541 9.371176719665527 C 1.478143930435181 8.503989219665527 1.171874403953552 7.492250919342041 1.171874403953552 6.445298194885254 C 1.171874403953552 3.537524700164795 3.537538528442383 1.171860694885254 6.445312023162842 1.171860694885254 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-56.48, -56.48)" d="M 62.9296875 65.859375 C 64.54512023925781 65.859375 65.859375 64.54512023925781 65.859375 62.9296875 C 65.859375 61.31425857543945 64.54512023925781 60 62.9296875 60 C 61.31425857543945 60 60 61.31425857543945 60 62.9296875 C 60 64.54512023925781 61.31425857543945 65.859375 62.9296875 65.859375 Z M 62.9296875 61.171875 C 63.89894485473633 61.171875 64.6875 61.96043014526367 64.6875 62.9296875 C 64.6875 63.89894485473633 63.89894485473633 64.6875 62.9296875 64.6875 C 61.96043014526367 64.6875 61.171875 63.89894485473633 61.171875 62.9296875 C 61.171875 61.96043014526367 61.96043014526367 61.171875 62.9296875 61.171875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-259.83, -156.27)" d="M 283.3828430175781 165.9999694824219 C 279.8288879394531 165.9999694824219 276.9375305175781 168.8913421630859 276.9375305175781 172.4452819824219 C 276.9375305175781 173.7225646972656 277.3108215332031 174.9574890136719 278.0170593261719 176.0167999267578 L 282.4756469726563 183.0105590820313 C 282.1304016113281 183.2194519042969 281.8627014160156 183.5438232421875 281.7258605957031 183.9296569824219 L 276.5859680175781 183.9296569824219 C 276.2623596191406 183.9296569824219 276.0000305175781 184.1919860839844 276.0000305175781 184.5155944824219 C 276.0000305175781 184.8392028808594 276.2623596191406 185.1015319824219 276.5859680175781 185.1015319824219 L 281.7257995605469 185.1015319824219 C 281.9676818847656 185.7835083007813 282.6189575195313 186.2734069824219 283.3828430175781 186.2734069824219 C 284.3521118164063 186.2734069824219 285.1406555175781 185.4848480224609 285.1406555175781 184.5155944824219 C 285.1406555175781 183.8780364990234 284.7994689941406 183.3187561035156 284.2901000976563 183.0105590820313 L 288.7486877441406 176.0167999267578 C 289.4548645019531 174.9574890136719 289.8281555175781 173.7225646972656 289.8281555175781 172.4452819824219 C 289.8281555175781 168.8913421630859 286.9367980957031 165.9999694824219 283.3828430175781 165.9999694824219 Z M 283.3828430175781 185.1015319824219 C 283.0597534179688 185.1015319824219 282.7969055175781 184.8386840820313 282.7969055175781 184.5155944824219 C 282.7969055175781 184.1925048828125 283.0597534179688 183.9296569824219 283.3828430175781 183.9296569824219 C 283.7059326171875 183.9296569824219 283.9687805175781 184.1925048828125 283.9687805175781 184.5155944824219 C 283.9687805175781 184.8386840820313 283.7059326171875 185.1015319824219 283.3828430175781 185.1015319824219 Z M 287.7706298828125 175.3711547851563 C 287.7683410644531 175.3746795654297 283.3828430175781 182.2536926269531 283.3828430175781 182.2536926269531 C 283.3828430175781 182.2536926269531 278.9973449707031 175.3746185302734 278.9950561523438 175.3711547851563 C 278.4156799316406 174.5039672851563 278.1094055175781 173.4922332763672 278.1094055175781 172.4452819824219 C 278.1094055175781 169.5375061035156 280.4750671386719 167.1718444824219 283.3828430175781 167.1718444824219 C 286.2906188964844 167.1718444824219 288.6562805175781 169.5375061035156 288.6562805175781 172.4452819824219 C 288.6562805175781 173.4922332763672 288.3500061035156 174.5039672851563 287.7706298828125 175.3711547851563 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-331.37, -212.76)" d="M 354.9296875 226 C 353.3142700195313 226 352 227.3142547607422 352 228.9296875 C 352 230.5451202392578 353.3142700195313 231.859375 354.9296875 231.859375 C 356.5451049804688 231.859375 357.859375 230.5451202392578 357.859375 228.9296875 C 357.859375 227.3142547607422 356.5451049804688 226 354.9296875 226 Z M 354.9296875 230.6875 C 353.9604187011719 230.6875 353.171875 229.8989410400391 353.171875 228.9296875 C 353.171875 227.9604339599609 353.9604187011719 227.171875 354.9296875 227.171875 C 355.8989562988281 227.171875 356.6875 227.9604339599609 356.6875 228.9296875 C 356.6875 229.8989410400391 355.8989562988281 230.6875 354.9296875 230.6875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
