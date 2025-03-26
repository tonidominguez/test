import '/backend/api_requests/api_calls.dart';
import '/components/modal_weight_map/modal_weight_map_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'weight_map_model.dart';
export 'weight_map_model.dart';

class WeightMapWidget extends StatefulWidget {
  const WeightMapWidget({super.key});

  static String routeName = 'weightMap';
  static String routePath = '/weightMap';

  @override
  State<WeightMapWidget> createState() => _WeightMapWidgetState();
}

class _WeightMapWidgetState extends State<WeightMapWidget> {
  late WeightMapModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeightMapModel());
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
      future: WeightGroup.mapCall.call(
        token: FFAppState().sessionToken,
        userId: FFAppState().userID,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final weightMapMapResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
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
                  context.pushNamed(WeightWidget.routeName);
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'dprx0ufi' /* Mes a mes */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Rubik',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.512,
                        child: Stack(
                          key: ValueKey('GlobalKey'),
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                              child: Image.memory(
                                functions
                                        .string2Image(
                                            FFAppState().weightMapBackground)
                                        ?.bytes ??
                                    Uint8List.fromList([]),
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    Image.asset(
                                  'assets/images/error_image.png',
                                  width: double.infinity,
                                  height: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              WeightGroup.mapCall.mapTitle(
                                                weightMapMapResponse.jsonBody,
                                              ),
                                              'mapTitle',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Indie Flower',
                                                  color: valueOrDefault<Color>(
                                                    functions.string2Color(
                                                        WeightGroup.mapCall
                                                            .colorText(
                                                      weightMapMapResponse
                                                          .jsonBody,
                                                    )!),
                                                    Colors.black,
                                                  ),
                                                  fontSize: 28.0,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Opacity(
                                      opacity: _model.extraField ? 1.0 : 0.0,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: functions.string2Color(
                                                      WeightGroup.mapCall
                                                          .colorMonth(
                                                    weightMapMapResponse
                                                        .jsonBody,
                                                  )!),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(2.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            WeightGroup.mapCall
                                                                .extraField(
                                                              weightMapMapResponse
                                                                  .jsonBody,
                                                            ),
                                                            'xFld',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .extraDifference(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.toString(),
                                                                'xDiff',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  FFAppState()
                                                                      .weightUnit,
                                                                  'kg',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Indie Flower',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        functions.string2Color(WeightGroup
                                                                            .mapCall
                                                                            .colorText(
                                                                          weightMapMapResponse
                                                                              .jsonBody,
                                                                        )!),
                                                                        Colors
                                                                            .black,
                                                                      ),
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .extravValue(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )
                                                                    ?.toString(),
                                                                'xVal',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  FFAppState()
                                                                      .weightUnit,
                                                                  'kg',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Indie Flower',
                                                                      color: valueOrDefault<
                                                                          Color>(
                                                                        functions.string2Color(WeightGroup
                                                                            .mapCall
                                                                            .colorText(
                                                                          weightMapMapResponse
                                                                              .jsonBody,
                                                                        )!),
                                                                        Colors
                                                                            .black,
                                                                      ),
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
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
                                          ],
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField1(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF1',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue1(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .extravValue(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue1(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV1',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField2(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF2',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue2(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue1(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue2(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV2',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField3(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF3',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue3(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue2(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue3(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV3',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField4(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF4',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue4(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue3(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue4(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV4',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField5(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF5',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue5(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue4(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue5(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV5',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField6(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF6',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue6(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue5(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue6(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV6',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField7(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF7',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue7(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue6(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue7(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV7',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField8(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF8',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue8(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue7(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue8(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV8',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField9(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF9',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue9(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue8(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue9(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV9',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField10(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF10',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue10(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue9(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue10(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV10',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField11(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF11',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue11(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue10(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue11(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV11',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                        Flexible(
                                          flex: 1,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color: functions.string2Color(
                                                  WeightGroup.mapCall
                                                      .colorMonth(
                                                weightMapMapResponse.jsonBody,
                                              )!),
                                              elevation: 4.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 22.0,
                                                    decoration: BoxDecoration(
                                                      color: functions
                                                          .string2Color(WeightGroup
                                                              .mapCall
                                                              .colorMonthTitle(
                                                        weightMapMapResponse
                                                            .jsonBody,
                                                      )!),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                0.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                8.0),
                                                        topRight:
                                                            Radius.circular(
                                                                8.0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        0.0,
                                                                        6.0,
                                                                        0.0),
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                WeightGroup
                                                                    .mapCall
                                                                    .montField12(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                ),
                                                                'mF12',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Indie Flower',
                                                                    color: valueOrDefault<
                                                                        Color>(
                                                                      functions.string2Color(WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                        weightMapMapResponse
                                                                            .jsonBody,
                                                                      )!),
                                                                      Colors
                                                                          .black,
                                                                    ),
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 0.0)),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            functions
                                                                .diffNumbers(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue12(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ),
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .monthValue11(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    ))
                                                                .toString(),
                                                            '0',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displayMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                fontSize: 25.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          FFAppState()
                                                              .weightUnit,
                                                          'kg',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Indie Flower',
                                                              color:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                functions.string2Color(
                                                                    WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                  weightMapMapResponse
                                                                      .jsonBody,
                                                                )!),
                                                                Colors.black,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              WeightGroup
                                                                  .mapCall
                                                                  .monthValue12(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )
                                                                  ?.toString(),
                                                              'mV12',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .displayMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Indie Flower',
                                                                  color:
                                                                      valueOrDefault<
                                                                          Color>(
                                                                    functions.string2Color(WeightGroup
                                                                        .mapCall
                                                                        .colorText(
                                                                      weightMapMapResponse
                                                                          .jsonBody,
                                                                    )!),
                                                                    Colors
                                                                        .black,
                                                                  ),
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            FFAppState()
                                                                .weightUnit,
                                                            'kg',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Indie Flower',
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  functions.string2Color(
                                                                      WeightGroup
                                                                          .mapCall
                                                                          .colorText(
                                                                    weightMapMapResponse
                                                                        .jsonBody,
                                                                  )!),
                                                                  Colors.black,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
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
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Material(
                        color: Colors.transparent,
                        child: SwitchListTile.adaptive(
                          value: _model.switchListTileValue ??= true,
                          onChanged: (newValue) async {
                            safeSetState(
                                () => _model.switchListTileValue = newValue);
                            if (newValue) {
                              _model.extraField = true;
                              safeSetState(() {});
                            } else {
                              _model.extraField = false;
                              safeSetState(() {});
                            }
                          },
                          title: Text(
                            FFLocalizations.of(context).getText(
                              'ra4jfew3' /* Mostrar campo extra */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          subtitle: Text(
                            FFLocalizations.of(context).getText(
                              'z1f1q5y1' /* Oculta o muestra la informació... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: FlutterFlowTheme.of(context).primary,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).accent1,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).alternate,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Container(
                              width: 0.0,
                              height: 20.0,
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.add_a_photo_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Semantics(
                                      label: 'Change wallpaper',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            safeSetState(() =>
                                                _model.isDataUploading = true);
                                            var selectedUploadedFiles =
                                                <FFUploadedFile>[];

                                            try {
                                              selectedUploadedFiles =
                                                  selectedMedia
                                                      .map(
                                                          (m) => FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                      .toList();
                                            } finally {
                                              _model.isDataUploading = false;
                                            }
                                            if (selectedUploadedFiles.length ==
                                                selectedMedia.length) {
                                              safeSetState(() {
                                                _model.uploadedLocalFile =
                                                    selectedUploadedFiles.first;
                                              });
                                            } else {
                                              safeSetState(() {});
                                              return;
                                            }
                                          }

                                          FFAppState().weightMapBackground =
                                              functions.image2String(
                                                  _model.uploadedLocalFile)!;
                                          safeSetState(() {});
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          child: Image.memory(
                                            functions
                                                    .string2Image(FFAppState()
                                                        .weightMapBackground)
                                                    ?.bytes ??
                                                Uint8List.fromList([]),
                                            width: double.infinity,
                                            height: double.infinity,
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Image.asset(
                                              'assets/images/error_image.png',
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'lu6vztv4' /* Selecciona la imagen de fondo */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Builder(
                      builder: (context) => Padding(
                        padding: EdgeInsets.all(12.0),
                        child: FFButtonWidget(
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
                                      FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                    },
                                    child: ModalWeightMapWidget(),
                                  ),
                                );
                              },
                            );
                          },
                          text: FFLocalizations.of(context).getText(
                            'mnzck1gu' /* Editar */,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
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
