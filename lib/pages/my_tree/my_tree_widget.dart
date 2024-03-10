import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_rive_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:rive/rive.dart' hide LinearGradient;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'my_tree_model.dart';
export 'my_tree_model.dart';

class MyTreeWidget extends StatefulWidget {
  const MyTreeWidget({super.key});

  @override
  State<MyTreeWidget> createState() => _MyTreeWidgetState();
}

class _MyTreeWidgetState extends State<MyTreeWidget>
    with TickerProviderStateMixin {
  late MyTreeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTreeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: queryToDoListRecordCount(
        queryBuilder: (toDoListRecord) => toDoListRecord
            .where(
              'toDoState',
              isEqualTo: true,
            )
            .where(
              'user',
              isEqualTo: currentUserReference,
            ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        int myTreeCount = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 576.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFDBE2E7),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                if (myTreeCount == 0)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 489.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/798-1554-tree-demo.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.tree0Controllers,
                                      ),
                                    ),
                                  ),
                                if (myTreeCount == 1)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 489.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/798-1554-tree-demo.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.tree1Controllers,
                                      ),
                                    ),
                                  ),
                                if ((myTreeCount == 3) || (myTreeCount == 2))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 489.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/798-1554-tree-demo.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.tree23Controllers,
                                      ),
                                    ),
                                  ),
                                if ((myTreeCount == 5) || (myTreeCount == 4))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 489.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/798-1554-tree-demo.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.tree45Controllers,
                                      ),
                                    ),
                                  ),
                                if ((myTreeCount == 7) || (myTreeCount == 6))
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 489.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/798-1554-tree-demo.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.tree67Controllers,
                                      ),
                                    ),
                                  ),
                                if (myTreeCount >= 8)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: 350.0,
                                      height: 489.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/798-1554-tree-demo.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers:
                                            _model.tree8OrGrControllers,
                                      ),
                                    ),
                                  ),
                                if (myTreeCount >= 8)
                                  Align(
                                    alignment: AlignmentDirectional(0.0, -0.81),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      child: custom_widgets.Confetti(
                                        width: 100.0,
                                        height: 100.0,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 8.0, 24.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(11.52, 0.0),
                              child: Stack(
                                children: [
                                  if ((myTreeCount == 2) || (myTreeCount == 3))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 333.0,
                                        height: 99.0,
                                        child: RiveAnimation.network(
                                          'https://public.rive.app/community/runtime-files/7215-13841-star-ratings.riv',
                                          artboard: 'New Artboard',
                                          fit: BoxFit.cover,
                                          controllers: _model.stars2Controllers,
                                        ),
                                      ),
                                    ),
                                  if (myTreeCount >= 8)
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Container(
                                        width: 333.0,
                                        height: 99.0,
                                        child: RiveAnimation.network(
                                          'https://public.rive.app/community/runtime-files/7215-13841-star-ratings.riv',
                                          artboard: 'New Artboard',
                                          fit: BoxFit.cover,
                                          controllers: _model.stars5Controllers,
                                        ),
                                      ),
                                    ),
                                  if (myTreeCount == 0)
                                    Container(
                                      width: 333.0,
                                      height: 99.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/7215-13841-star-ratings.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers:
                                            _model.starsNoneControllers,
                                      ),
                                    ),
                                  if ((myTreeCount == 4) || (myTreeCount == 5))
                                    Container(
                                      width: 333.0,
                                      height: 99.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/7215-13841-star-ratings.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.stars3Controllers,
                                      ),
                                    ),
                                  if ((myTreeCount == 6) || (myTreeCount == 7))
                                    Container(
                                      width: 333.0,
                                      height: 99.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/7215-13841-star-ratings.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.stars4Controllers,
                                      ),
                                    ),
                                  if (myTreeCount == 1)
                                    Container(
                                      width: 333.0,
                                      height: 99.0,
                                      child: RiveAnimation.network(
                                        'https://public.rive.app/community/runtime-files/7215-13841-star-ratings.riv',
                                        artboard: 'New Artboard',
                                        fit: BoxFit.cover,
                                        controllers: _model.stars1Controllers,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Tasks completed:',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 16.0,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                myTreeCount.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              ' \"Tree Demo\" by TcToon on Rive',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchURL(
                                      'https://rive.app/community/798-1554-tree-demo/');
                                },
                                child: Icon(
                                  Icons.link,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\"Rating Animation\" by TcToon on Rive',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  await launchURL(
                                      'https://rive.app/community/3472-7900-rating-animation/');
                                },
                                child: Icon(
                                  Icons.link,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
