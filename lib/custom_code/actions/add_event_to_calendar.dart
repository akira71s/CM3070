// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

Future<String> addEventToCalendar(String accessToken, dynamic eventJSON) async {
  final headers = {
    'Authorization': 'Bearer $accessToken',
    'Content-Type': 'application/json'
  };
  // https://pub.dev/packages/http/example
  // https://developers.google.com/calendar/api/v3/reference/events/insert
  try {
    print("event JSON");
    print(jsonEncode(eventJSON));
    final response = await http.post(
        Uri.parse(
            'https://www.googleapis.com/calendar/v3/calendars/primary/events'),
        headers: headers,
        body: eventJSON);
    if (response.statusCode == 200) {
      return "success";
    } else {
      print("err response");
      print(response);
      return "failure";
    }
  } catch (e) {
    print("catch");
    print(e);
    return "failure";
  }
}
