import '/backend/api_requests/api_calls.dart';
import '/components/measures_form/measures_form_widget.dart';
import '/components/measures_reference/measures_reference_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'measures_model.dart';
export 'measures_model.dart';

class MeasuresWidget extends StatefulWidget {
  const MeasuresWidget({super.key});

  static String routeName = 'Measures';
  static String routePath = '/measures';

  @override
  State<MeasuresWidget> createState() => _MeasuresWidgetState();
}

class _MeasuresWidgetState extends State<MeasuresWidget> {
  late MeasuresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeasuresModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (!(((FFAppState().measuresBeforeID == 0) &&
              (FFAppState().measuresBeforeID != null)) &&
          ((FFAppState().measuresNowID == 0) &&
              (FFAppState().measuresNowID != null)))) {
        _model.apibeforeMesuresLoad = await MeasuresGroup.measuresByIdCall.call(
          token: FFAppState().sessionToken,
          userId: FFAppState().userID,
          id: FFAppState().measuresBeforeID.toString(),
        );

        if ((_model.apibeforeMesuresLoad?.succeeded ?? true)) {
          _model.apinowMesuresLoad = await MeasuresGroup.measuresByIdCall.call(
            token: FFAppState().sessionToken,
            userId: FFAppState().userID,
            id: FFAppState().measuresNowID.toString(),
          );

          if ((_model.apinowMesuresLoad?.succeeded ?? true)) {
            _model.diffChest = valueOrDefault<double>(
              functions.substract2numbers(
                  MeasuresGroup.measuresByIdCall.chest(
                    (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
                  )!,
                  MeasuresGroup.measuresByIdCall.chest(
                    (_model.apinowMesuresLoad?.jsonBody ?? ''),
                  )!),
              0.0,
            );
            _model.diffArm = valueOrDefault<double>(
              functions.substract2numbers(
                  MeasuresGroup.measuresByIdCall.arm(
                    (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
                  )!,
                  MeasuresGroup.measuresByIdCall.arm(
                    (_model.apinowMesuresLoad?.jsonBody ?? ''),
                  )!),
              0.0,
            );
            _model.diffWaist = valueOrDefault<double>(
              functions.substract2numbers(
                  MeasuresGroup.measuresByIdCall.waist(
                    (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
                  )!,
                  MeasuresGroup.measuresByIdCall.waist(
                    (_model.apinowMesuresLoad?.jsonBody ?? ''),
                  )!),
              0.0,
            );
            _model.diffAbdomend = valueOrDefault<double>(
              functions.substract2numbers(
                  MeasuresGroup.measuresByIdCall.abdomen(
                    (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
                  )!,
                  MeasuresGroup.measuresByIdCall.abdomen(
                    (_model.apinowMesuresLoad?.jsonBody ?? ''),
                  )!),
              0.0,
            );
            _model.diffHip = valueOrDefault<double>(
              functions.substract2numbers(
                  MeasuresGroup.measuresByIdCall.hip(
                    (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
                  )!,
                  MeasuresGroup.measuresByIdCall.hip(
                    (_model.apinowMesuresLoad?.jsonBody ?? ''),
                  )!),
              0.0,
            );
            _model.diffThigh = valueOrDefault<double>(
              functions.substract2numbers(
                  MeasuresGroup.measuresByIdCall.thigh(
                    (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
                  )!,
                  MeasuresGroup.measuresByIdCall.thigh(
                    (_model.apinowMesuresLoad?.jsonBody ?? ''),
                  )!),
              0.0,
            );
            _model.nowChest = MeasuresGroup.measuresByIdCall.chest(
              (_model.apinowMesuresLoad?.jsonBody ?? ''),
            );
            _model.beforeChest = MeasuresGroup.measuresByIdCall.chest(
              (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
            );
            _model.nowArm = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.arm(
                (_model.apinowMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.nowWaist = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.waist(
                (_model.apinowMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.nowAbdomen = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.abdomen(
                (_model.apinowMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.nowHip = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.hip(
                (_model.apinowMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.nowThigh = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.thigh(
                (_model.apinowMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.beforeArm = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.arm(
                (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.beforeWaist = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.waist(
                (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.beforeAbdomen = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.abdomen(
                (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.beforeHip = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.hip(
                (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            _model.beforeThigh = valueOrDefault<double>(
              MeasuresGroup.measuresByIdCall.thigh(
                (_model.apibeforeMesuresLoad?.jsonBody ?? ''),
              ),
              0.0,
            );
            safeSetState(() {});
          } else {
            return;
          }

          return;
        } else {
          return;
        }
      } else {
        return;
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

    return FutureBuilder<ApiCallResponse>(
      future: _model.measuresData(
        uniqueQueryKey: 'queryAllMeasures',
        overrideCache: FFAppState().isCacheOverride,
        requestFn: () => MeasuresGroup.allMeasuresCall.call(
          token: FFAppState().sessionToken,
          userId: FFAppState().userID,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final measuresAllMeasuresResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFFC2AAFF),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed(HomePageWidget.routeName);
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '7t4bsjaf' /* Medidas */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Rubik',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
                Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).secondary,
                      icon: Icon(
                        Icons.info_outline,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () {
                                  FocusScope.of(dialogContext).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: MeasuresReferenceWidget(),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondary,
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pushNamed(MeasuresDataListWidget.routeName);
                    },
                  ),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderRadius: 8.0,
                      buttonSize: 40.0,
                      fillColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.add,
                        color: FlutterFlowTheme.of(context).info,
                        size: 24.0,
                      ),
                      onPressed: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () {
                                  FocusScope.of(dialogContext).unfocus();
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                                child: MeasuresFormWidget(
                                  formTitle:
                                      FFLocalizations.of(context).getText(
                                    'i43nr0bz' /* Insertar medidas */,
                                  ),
                                  id: 0,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowAdBanner(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 50.0,
                      showsTestAd: false,
                      iOSAdUnitID: 'ca-app-pub-7682022282959009/2953626813',
                      androidAdUnitID: 'ca-app-pub-7682022282959009/8542495843',
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Opacity(
                                  opacity: 0.0,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'tva5t3aw' /* Medidas */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '1kfrc9lv' /* Antes */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Rubik',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'dkb1eda2' /* Ahora */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Rubik',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
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
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFC2AAFF),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                flex: 2,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bookmark_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .imc6,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'r3urgivo' /* Busto */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    key: ValueKey('diffChest'),
                                                    valueOrDefault<String>(
                                                      _model.diffChest
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      Opacity(
                                                        opacity:
                                                            _model.diffChest! <
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .caretUp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffChest! >
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .caretDown,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffChest ==
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .equals,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 18.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bookmark_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .imc5,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8my86wks' /* Brazo */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.diffArm
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      Opacity(
                                                        opacity:
                                                            _model.diffArm! <
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .caretUp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffArm! >
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .caretDown,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffArm ==
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .equals,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 18.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bookmark_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .imc4,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'oa7dqoid' /* Cintura */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.diffWaist
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      Opacity(
                                                        opacity:
                                                            _model.diffWaist! <
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .caretUp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffWaist! >
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .caretDown,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffWaist ==
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .equals,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 18.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bookmark_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .imc3,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dn25ietr' /* Abdomen */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      _model.diffAbdomend
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Stack(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    children: [
                                                      Opacity(
                                                        opacity:
                                                            _model.diffAbdomend! <
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .caretUp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffAbdomend! >
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .caretDown,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .success,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Opacity(
                                                        opacity:
                                                            _model.diffAbdomend ==
                                                                    0.0
                                                                ? 1.0
                                                                : 0.0,
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .equals,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .info,
                                                            size: 18.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bookmark_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .imc2,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '7uiv72h3' /* Cadera */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.diffHip
                                                            ?.toString(),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      children: [
                                                        Opacity(
                                                          opacity:
                                                              _model.diffHip! <
                                                                      0.0
                                                                  ? 1.0
                                                                  : 0.0,
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .caretUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity:
                                                              _model.diffHip! >
                                                                      0.0
                                                                  ? 1.0
                                                                  : 0.0,
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .caretDown,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity:
                                                              _model.diffHip ==
                                                                      0.0
                                                                  ? 1.0
                                                                  : 0.0,
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .equals,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 18.0,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Icon(
                                                  Icons.bookmark_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .imc1,
                                                  size: 18.0,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'm9j2jhlv' /* Muslo */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.diffThigh
                                                            ?.toString(),
                                                        '0',
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Stack(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      children: [
                                                        Opacity(
                                                          opacity:
                                                              _model.diffThigh! <
                                                                      0.0
                                                                  ? 1.0
                                                                  : 0.0,
                                                          child: FaIcon(
                                                            FontAwesomeIcons
                                                                .caretUp,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 20.0,
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity:
                                                              _model.diffThigh! >
                                                                      0.0
                                                                  ? 1.0
                                                                  : 0.0,
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .caretDown,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success,
                                                              size: 20.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Opacity(
                                                          opacity:
                                                              _model.diffThigh ==
                                                                      0.0
                                                                  ? 1.0
                                                                  : 0.0,
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: FaIcon(
                                                              FontAwesomeIcons
                                                                  .equals,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 18.0,
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
                              ),
                              Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.beforeChest?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.beforeArm?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.beforeWaist?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.beforeAbdomen
                                                    ?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.beforeHip?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.beforeThigh?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
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
                              Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.nowChest?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.nowArm?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.nowWaist?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.nowAbdomen?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.nowHip?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                _model.nowThigh?.toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .info,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  FFAppState().heightUnit,
                                                  'cm',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
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
                        ),
                      ),
                    ),
                    if (!((FFAppState().measuresBeforeID == 0) &&
                        (FFAppState().measuresNowID == 0)))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Container(
                          width: 370.0,
                          height: 230.0,
                          child: FlutterFlowLineChart(
                            data: [
                              FFLineChartData(
                                xData: MeasuresGroup.allMeasuresCall.createdAt(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                yData: MeasuresGroup.allMeasuresCall.chest(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).imc6,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              ),
                              FFLineChartData(
                                xData: MeasuresGroup.allMeasuresCall.createdAt(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                yData: MeasuresGroup.allMeasuresCall.arm(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).imc5,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              ),
                              FFLineChartData(
                                xData: MeasuresGroup.allMeasuresCall.createdAt(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                yData: MeasuresGroup.allMeasuresCall.waist(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).imc4,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              ),
                              FFLineChartData(
                                xData: MeasuresGroup.allMeasuresCall.createdAt(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                yData: MeasuresGroup.allMeasuresCall.abdomen(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).imc3,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              ),
                              FFLineChartData(
                                xData: MeasuresGroup.allMeasuresCall.createdAt(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                yData: MeasuresGroup.allMeasuresCall.hip(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).imc2,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              ),
                              FFLineChartData(
                                xData: MeasuresGroup.allMeasuresCall.createdAt(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                yData: MeasuresGroup.allMeasuresCall.thigh(
                                  measuresAllMeasuresResponse.jsonBody,
                                )!,
                                settings: LineChartBarData(
                                  color: FlutterFlowTheme.of(context).imc1,
                                  barWidth: 2.0,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              )
                            ],
                            chartStylingInfo: ChartStylingInfo(
                              enableTooltip: true,
                              backgroundColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              showGrid: true,
                              showBorder: false,
                            ),
                            axisBounds: AxisBounds(),
                            xAxisLabelInfo: AxisLabelInfo(
                              reservedSize: 32.0,
                            ),
                            yAxisLabelInfo: AxisLabelInfo(
                              reservedSize: 40.0,
                            ),
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFC2AAFF),
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 20.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'cdqfmchs' /* Antes */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    FlutterFlowDropDown<int>(
                                      controller:
                                          _model.beforeSelectValueController ??=
                                              FormFieldController<int>(
                                        _model.beforeSelectValue ??=
                                            FFAppState().measuresBeforeID,
                                      ),
                                      options: List<int>.from(
                                          MeasuresGroup.allMeasuresCall.id(
                                        measuresAllMeasuresResponse.jsonBody,
                                      )!),
                                      optionLabels: MeasuresGroup
                                          .allMeasuresCall
                                          .datesFormated(
                                        measuresAllMeasuresResponse.jsonBody,
                                      )!,
                                      onChanged: (val) async {
                                        safeSetState(() =>
                                            _model.beforeSelectValue = val);
                                        FFAppState().measuresBeforeID =
                                            _model.beforeSelectValue!;
                                        safeSetState(() {});
                                        _model.apibeforeMesuresSelectBEFORE =
                                            await MeasuresGroup.measuresByIdCall
                                                .call(
                                          token: FFAppState().sessionToken,
                                          userId: FFAppState().userID,
                                          id: FFAppState()
                                              .measuresBeforeID
                                              .toString(),
                                        );

                                        _model.apinowMesuresSelectBEFORE =
                                            await MeasuresGroup.measuresByIdCall
                                                .call(
                                          token: FFAppState().sessionToken,
                                          userId: FFAppState().userID,
                                          id: FFAppState()
                                              .measuresNowID
                                              .toString(),
                                        );

                                        _model.diffChest =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .chest(
                                                (_model.apibeforeMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .chest(
                                                (_model.apinowMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffArm = valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .arm(
                                                (_model.apibeforeMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .arm(
                                                (_model.apinowMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffWaist =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .waist(
                                                (_model.apibeforeMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .waist(
                                                (_model.apinowMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffAbdomend =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .abdomen(
                                                (_model.apibeforeMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .abdomen(
                                                (_model.apinowMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffHip = valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .hip(
                                                (_model.apibeforeMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .hip(
                                                (_model.apinowMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffThigh =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .thigh(
                                                (_model.apibeforeMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .thigh(
                                                (_model.apinowMesuresSelectBEFORE
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        safeSetState(() {});
                                        _model.beforeChest = MeasuresGroup
                                            .measuresByIdCall
                                            .chest(
                                          (_model.apibeforeMesuresSelectBEFORE
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.beforeArm =
                                            MeasuresGroup.measuresByIdCall.arm(
                                          (_model.apibeforeMesuresSelectBEFORE
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.beforeWaist = MeasuresGroup
                                            .measuresByIdCall
                                            .waist(
                                          (_model.apibeforeMesuresSelectBEFORE
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.beforeAbdomen = MeasuresGroup
                                            .measuresByIdCall
                                            .abdomen(
                                          (_model.apibeforeMesuresSelectBEFORE
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.beforeHip =
                                            MeasuresGroup.measuresByIdCall.hip(
                                          (_model.apibeforeMesuresSelectBEFORE
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.beforeThigh = MeasuresGroup
                                            .measuresByIdCall
                                            .thigh(
                                          (_model.apibeforeMesuresSelectBEFORE
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                      width: 300.0,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '0r2js040' /* Fecha... */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                      labelText: '',
                                      labelTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.0,
                                              ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Color(0xFFC2AAFF),
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Icon(
                                            Icons.calendar_month,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 20.0,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6jod28qo' /* Ahora */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    FlutterFlowDropDown<int>(
                                      controller:
                                          _model.nowSelectValueController ??=
                                              FormFieldController<int>(
                                        _model.nowSelectValue ??=
                                            FFAppState().measuresNowID,
                                      ),
                                      options: List<int>.from(
                                          MeasuresGroup.allMeasuresCall.id(
                                        measuresAllMeasuresResponse.jsonBody,
                                      )!),
                                      optionLabels: MeasuresGroup
                                          .allMeasuresCall
                                          .datesFormated(
                                        measuresAllMeasuresResponse.jsonBody,
                                      )!,
                                      onChanged: (val) async {
                                        safeSetState(
                                            () => _model.nowSelectValue = val);
                                        FFAppState().measuresNowID =
                                            _model.nowSelectValue!;
                                        safeSetState(() {});
                                        _model.apiNowMesuresSelectNOW =
                                            await MeasuresGroup.measuresByIdCall
                                                .call(
                                          token: FFAppState().sessionToken,
                                          userId: FFAppState().userID,
                                          id: FFAppState()
                                              .measuresNowID
                                              .toString(),
                                        );

                                        _model.apiBeforeMesuresSelectNOW =
                                            await MeasuresGroup.measuresByIdCall
                                                .call(
                                          token: FFAppState().sessionToken,
                                          userId: FFAppState().userID,
                                          id: FFAppState()
                                              .measuresBeforeID
                                              .toString(),
                                        );

                                        _model.nowChest = MeasuresGroup
                                            .measuresByIdCall
                                            .chest(
                                          (_model.apiNowMesuresSelectNOW
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.nowArm =
                                            MeasuresGroup.measuresByIdCall.arm(
                                          (_model.apiNowMesuresSelectNOW
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.nowWaist = MeasuresGroup
                                            .measuresByIdCall
                                            .waist(
                                          (_model.apiNowMesuresSelectNOW
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.nowAbdomen = MeasuresGroup
                                            .measuresByIdCall
                                            .abdomen(
                                          (_model.apiNowMesuresSelectNOW
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.nowHip =
                                            MeasuresGroup.measuresByIdCall.hip(
                                          (_model.apiNowMesuresSelectNOW
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        _model.nowThigh = MeasuresGroup
                                            .measuresByIdCall
                                            .thigh(
                                          (_model.apiNowMesuresSelectNOW
                                                  ?.jsonBody ??
                                              ''),
                                        );
                                        safeSetState(() {});
                                        _model.diffChest =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .chest(
                                                (_model.apiBeforeMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .chest(
                                                (_model.apiNowMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffArm = valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .arm(
                                                (_model.apiBeforeMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .arm(
                                                (_model.apiNowMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffWaist =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .waist(
                                                (_model.apiBeforeMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .waist(
                                                (_model.apiNowMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffAbdomend =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .abdomen(
                                                (_model.apiBeforeMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .abdomen(
                                                (_model.apiNowMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffHip = valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .hip(
                                                (_model.apiBeforeMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .hip(
                                                (_model.apiNowMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        _model.diffThigh =
                                            valueOrDefault<double>(
                                          functions.substract2numbers(
                                              MeasuresGroup.measuresByIdCall
                                                  .thigh(
                                                (_model.apiBeforeMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!,
                                              MeasuresGroup.measuresByIdCall
                                                  .thigh(
                                                (_model.apiNowMesuresSelectNOW
                                                        ?.jsonBody ??
                                                    ''),
                                              )!),
                                          0.0,
                                        );
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                      width: 300.0,
                                      height: 56.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        '7ijlexy0' /* Fecha... */,
                                      ),
                                      icon: Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      elevation: 2.0,
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 8.0,
                                      margin: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 4.0),
                                      hidesUnderline: true,
                                      isOverButton: true,
                                      isSearchable: false,
                                      isMultiSelect: false,
                                    ),
                                  ],
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
            ),
          ),
        );
      },
    );
  }
}
