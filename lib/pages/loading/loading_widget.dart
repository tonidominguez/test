import '/backend/api_requests/api_calls.dart';
import '/components/progress_bar/progress_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'loading_model.dart';
export 'loading_model.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key});

  static String routeName = 'Loading';
  static String routePath = '/loading';

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
  late LoadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiCheckSession = await CheckSessionCall.call(
        token: FFAppState().sessionToken,
        userId: FFAppState().userID,
      );

      _model.progressBar = _model.progressBar + 37.0;
      safeSetState(() {});
      if ((_model.apiCheckSession?.succeeded ?? true) == true) {
        await action_blocks.userData(context);
        _model.progressBar = _model.progressBar + 37.0;
        safeSetState(() {});
        await action_blocks.waterData(context);
        _model.progressBar = _model.progressBar + 37.0;
        safeSetState(() {});
        await action_blocks.moodData(context);
        _model.progressBar = _model.progressBar + 37.0;
        safeSetState(() {});
        await action_blocks.weightData(context);
        _model.progressBar = _model.progressBar + 37.0;
        safeSetState(() {});
        await action_blocks.pillsData(context);
        _model.progressBar = _model.progressBar + 37.0;
        safeSetState(() {});
        await action_blocks.measuresData(context);
        _model.progressBar = _model.progressBar + 37.0;
        safeSetState(() {});
        await action_blocks.workoutData(context);
        FFAppState().mealsDateSelected =
            functions.convertDateTime2Date(getCurrentTimestamp)!;
        safeSetState(() {});
        // Ir a página Inicio

        context.goNamed(HomePageWidget.routeName);
      } else {
        context.pushNamed(WelcomeWidget.routeName);
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Hero(
                    tag: 'logo',
                    transitionOnUserGestures: true,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/logo_vectorial.svg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'w5pbk1qe' /* Cargando... */,
                          ),
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 35.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w800,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: wrapWithModel(
                    model: _model.progressBarModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: ProgressBarWidget(
                      value: _model.progressBar,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
