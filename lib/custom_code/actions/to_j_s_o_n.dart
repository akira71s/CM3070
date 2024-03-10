// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CalendarEvent {
  final String summary;
  final String description;
  final DateTime date;

  CalendarEvent({
    required this.summary,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
        "summary": summary,
        "description": description,
        "start": {
          "date": DateFormat("yyyy-MM-dd").format(date),
        },
        "end": {
          "date": DateFormat("yyyy-MM-dd").format(date),
        }
      };
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<dynamic> toJSON(
    String summary, String description, DateTime date) async {
  final event =
      CalendarEvent(summary: summary, description: description, date: date);
  return jsonEncode(event.toJson());
}
