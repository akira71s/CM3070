import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'my_tree_widget.dart' show MyTreeWidget;
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyTreeModel extends FlutterFlowModel<MyTreeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for tree_0 widget.
  final tree0AnimationsList = [
    'in',
    'Leaves_left_idle',
    'Leaves_center_idle',
    'Branch_right_idle',
    'Branch_right',
  ];
  List<FlutterFlowRiveController> tree0Controllers = [];
  // State field(s) for tree_1 widget.
  final tree1AnimationsList = [
    'in',
    'Leaves_center_step_1',
    'Leaves_left_step_1',
    'Leaves_right_step 1',
  ];
  List<FlutterFlowRiveController> tree1Controllers = [];
  // State field(s) for tree_2_3 widget.
  final tree23AnimationsList = [
    'Leaves_center_step_1',
    'Leaves_right_step 1',
    'Leaves_center_step_2',
    'Leaves_Right_step 2',
    'Leaves_left_step_2',
    'in',
    'Leaves_Right_step 3',
  ];
  List<FlutterFlowRiveController> tree23Controllers = [];
  // State field(s) for tree_4_5 widget.
  final tree45AnimationsList = [
    'Leaves_center_step_2',
    'Leaves_Right_step 2',
    'in',
    'Leaves_left_step_1',
    'Leaves_left_step_2',
    'Leaves_Right_step 3',
    'out',
  ];
  List<FlutterFlowRiveController> tree45Controllers = [];
  // State field(s) for tree_6_7 widget.
  final tree67AnimationsList = [
    'Leaves_center_step_2',
    'Leaves_Right_step 2',
    'in',
    'Leaves_left_step_1',
    'Leaves_left_step_2',
    'Leaves_Right_step 3',
    'out',
    'Leaves_center_step_3',
  ];
  List<FlutterFlowRiveController> tree67Controllers = [];
  // State field(s) for tree_8_or_gr widget.
  final tree8OrGrAnimationsList = [
    'Leaves_Right_step 3',
    'Leaves_center_step_3',
    'out',
  ];
  List<FlutterFlowRiveController> tree8OrGrControllers = [];
  // State field(s) for stars_2 widget.
  final stars2AnimationsList = [
    '2_stars',
  ];
  List<FlutterFlowRiveController> stars2Controllers = [];
  // State field(s) for stars_5 widget.
  final stars5AnimationsList = [
    '5_stars',
  ];
  List<FlutterFlowRiveController> stars5Controllers = [];
  // State field(s) for stars_none widget.
  final starsNoneAnimationsList = [
    'Idle_empty',
  ];
  List<FlutterFlowRiveController> starsNoneControllers = [];
  // State field(s) for stars_3 widget.
  final stars3AnimationsList = [
    '3_stars',
  ];
  List<FlutterFlowRiveController> stars3Controllers = [];
  // State field(s) for stars_4 widget.
  final stars4AnimationsList = [
    '4_stars',
  ];
  List<FlutterFlowRiveController> stars4Controllers = [];
  // State field(s) for stars_1 widget.
  final stars1AnimationsList = [
    '1_star',
  ];
  List<FlutterFlowRiveController> stars1Controllers = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tree0AnimationsList.forEach((name) {
      tree0Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    tree1AnimationsList.forEach((name) {
      tree1Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    tree23AnimationsList.forEach((name) {
      tree23Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    tree45AnimationsList.forEach((name) {
      tree45Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    tree67AnimationsList.forEach((name) {
      tree67Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    tree8OrGrAnimationsList.forEach((name) {
      tree8OrGrControllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    stars2AnimationsList.forEach((name) {
      stars2Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    stars5AnimationsList.forEach((name) {
      stars5Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    starsNoneAnimationsList.forEach((name) {
      starsNoneControllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    stars3AnimationsList.forEach((name) {
      stars3Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    stars4AnimationsList.forEach((name) {
      stars4Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });

    stars1AnimationsList.forEach((name) {
      stars1Controllers.add(FlutterFlowRiveController(
        name,
      ));
    });
  }

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
