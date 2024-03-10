import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'confirm_to_add_to_google_calendar_widget.dart'
    show ConfirmToAddToGoogleCalendarWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmToAddToGoogleCalendarModel
    extends FlutterFlowModel<ConfirmToAddToGoogleCalendarWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Custom Action - signInWithGoogle] action in Button widget.
  String? accessToken;
  // Stores action output result for [Custom Action - toJSON] action in Button widget.
  dynamic? calendarDataJSON;
  // Stores action output result for [Custom Action - addEventToCalendar] action in Button widget.
  String? result;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
