import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class ClubData {
  String cname; // Name of the Club
  String cdesc; // Description of the Club
  String curl; // URL of the API endpoint for the Club
  String cmaxcap; // Max Capacity of the Club
  String ccurstr; // Current Strength of the Club
  String cwaitstr; // Waiting Strength of the Club
  int id;
  String updtime;
  String cimg1;

  ClubData({this.cname, this.curl});

  ClubData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    curl = id.toString();
    cname = json['name'];
    cdesc = json['description'];
    cimg1 = json['image1'].toString();
  }

  Future<void> getData() async {
    try {
      Response response = await get(
          'https://clubbspots.pythonanywhere.com/clublistasventures/$curl/?format=json');
      Map data = jsonDecode(response.body);
      id = data['id'];
      cname = data['name'];
      cdesc = data['description'];
      cmaxcap = data['maxcap'].toString();
      ccurstr = data['currcap'].toString();
      cwaitstr = data['waitcap'].toString();
      cimg1 = data['image1'].toString();
      // Updated Time
      updtime = data['updatedtime'];
      DateTime now = DateTime.parse(updtime);
      now = now.add(Duration(hours: 5, minutes: 30));
      updtime = DateFormat.jm().format(now);
    } catch (e) {
      cname = 'Something Went Wrong';
      cdesc = 'Do not worry we are on it';
      cmaxcap = 'N/A';
      ccurstr = 'N/A';
      cwaitstr = 'N/A';
      updtime = 'N/A';
    }
  }
}
