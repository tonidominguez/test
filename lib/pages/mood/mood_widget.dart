import '/backend/api_requests/api_calls.dart';
import '/components/custom_icon/custom_icon_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'mood_model.dart';
export 'mood_model.dart';

class MoodWidget extends StatefulWidget {
  const MoodWidget({super.key});

  static String routeName = 'Mood';
  static String routePath = '/mood';

  @override
  State<MoodWidget> createState() => _MoodWidgetState();
}

class _MoodWidgetState extends State<MoodWidget> {
  late MoodModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoodModel());

    _model.textFieldFocusNode ??= FocusNode();
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
      future: MoodGroup.byDateCall.call(
        token: FFAppState().sessionToken,
        userId: FFAppState().userID,
        moodDate: FFAppState().moodDateSelected != ''
            ? FFAppState().moodDateSelected
            : functions.convertDateTime2Date(getCurrentTimestamp),
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
        final moodByDateResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).imc6,
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
                  'j6awe6d2' /* Estado de ánimo */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Rubik',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [
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
                      context.pushNamed(MoodDataListWidget.routeName);
                    },
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                decoration: BoxDecoration(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowAdBanner(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 50.0,
                        showsTestAd: false,
                        iOSAdUnitID: 'ca-app-pub-7682022282959009/2953626813',
                        androidAdUnitID:
                            'ca-app-pub-7682022282959009/8542495843',
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Semantics(
                              label: 'Select date',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final _datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: (functions.string2Date(
                                            FFAppState().moodDateSelected) ??
                                        DateTime.now()),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2050),
                                    builder: (context, child) {
                                      return wrapInMaterialDatePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Rubik',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );

                                  if (_datePickedDate != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        _datePickedDate.year,
                                        _datePickedDate.month,
                                        _datePickedDate.day,
                                      );
                                    });
                                  } else if (_model.datePicked != null) {
                                    safeSetState(() {
                                      _model.datePicked = functions.string2Date(
                                          FFAppState().moodDateSelected);
                                    });
                                  }
                                  FFAppState().moodDateSelected =
                                      functions.convertDateTime2Date(
                                          _model.datePicked!)!;
                                  _model.apiDaySelected =
                                      await MoodGroup.byDateCall.call(
                                    token: FFAppState().sessionToken,
                                    userId: FFAppState().userID,
                                    moodDate: FFAppState().moodDateSelected,
                                  );

                                  if ((_model.apiDaySelected?.succeeded ??
                                      true)) {
                                    FFAppState().moodIconTodayID =
                                        valueOrDefault<int>(
                                      MoodGroup.byDateCall.iconID(
                                        (_model.apiDaySelected?.jsonBody ?? ''),
                                      ),
                                      0,
                                    );
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textController?.text =
                                          valueOrDefault<String>(
                                        MoodGroup.byDateCall.description(
                                          (_model.apiDaySelected?.jsonBody ??
                                              ''),
                                        ),
                                        '-',
                                      );
                                    });
                                  } else {
                                    FFAppState().moodIconTodayID = 0;
                                    safeSetState(() {});
                                    safeSetState(() {
                                      _model.textController?.text = '';
                                    });
                                  }

                                  safeSetState(() {});
                                },
                                child: Icon(
                                  Icons.calendar_month,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 40.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                dateTimeFormat(
                                  "MMMMEEEEd",
                                  functions.string2Date(functions
                                      .string2Date(
                                          FFAppState().moodDateSelected)
                                      ?.toString()),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 105.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color:
                                            FlutterFlowTheme.of(context).imc6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.customIconModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: CustomIconWidget(
                                                    iconID: MoodGroup.byDateCall
                                                        .iconID(
                                                      moodByDateResponse
                                                          .jsonBody,
                                                    )!,
                                                    iconColor: Colors.black,
                                                    iconSize: 60,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      MoodGroup.byDateCall
                                                          .description(
                                                        moodByDateResponse
                                                            .jsonBody,
                                                      ),
                                                      'Sin descripción',
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Wrap(
                          spacing: 5.0,
                          runSpacing: 10.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.center,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Semantics(
                              label: 'Mood unhappy',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 1;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'xnh4vgl0' /* 🙁 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood in love',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 2;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '012z1ccc' /* 😍 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood joke',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 3;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'qwbx7xvb' /* 😜 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood very angry',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 4;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '72jnlu8i' /* 🤬 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood barf',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 5;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '32cur5rb' /* 🤮 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood sad',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 6;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '2ibbyoks' /* 🥺 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood lol',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 7;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'luzupqfv' /* 😆 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood angry',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 8;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '3otgqeqq' /* 😠 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood cry',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 9;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '5qfmj5sh' /* 😢 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood sleep',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 10;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'baxffiq7' /* 😴 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood spiral face',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 11;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'tszsoc82' /* 😵‍💫 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood happy',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 12;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'n6nlj7iu' /* 🙂 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood sick',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 13;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'q8p23liv' /* 🤒 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood green',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 14;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'y20lc0sk' /* 🤢 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood party',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 15;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'yh4yr43l' /* 🥳 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Semantics(
                              label: 'Mood frozen',
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  FFAppState().moodIconTodayID = 16;
                                  safeSetState(() {});
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '0w9sn683' /* 🥶 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 40.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 90.0,
                              height: 90.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: wrapWithModel(
                                  model: _model.customIconModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CustomIconWidget(
                                    iconID: FFAppState().moodIconTodayID,
                                    iconSize: 60,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController ??=
                                      TextEditingController(
                                    text: MoodGroup.byDateCall.description(
                                      moodByDateResponse.jsonBody,
                                    ),
                                  ),
                                  focusNode: _model.textFieldFocusNode,
                                  autofocus: false,
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  textInputAction: TextInputAction.done,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  maxLines: null,
                                  minLines: 3,
                                  maxLength: 255,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.none,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  _model.apiAddUpdate =
                                      await MoodGroup.addOrUpdateMoodCall.call(
                                    token: FFAppState().sessionToken,
                                    userId: FFAppState().userID,
                                    iconId: valueOrDefault<int>(
                                      FFAppState().moodIconTodayID,
                                      0,
                                    ),
                                    description: _model.textController.text,
                                    moodDate: FFAppState().moodDateSelected,
                                  );

                                  HapticFeedback.lightImpact();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '¡Guardado correctamente!',
                                        style: TextStyle(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).imc6,
                                    ),
                                  );

                                  safeSetState(() {});
                                },
                                text: FFLocalizations.of(context).getText(
                                  'ycr8ou1a' /* Guardar */,
                                ),
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).imc6,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Roboto',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 2.0,
                                  borderRadius: BorderRadius.circular(8.0),
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
          ),
        );
      },
    );
  }
}
