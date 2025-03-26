import '/backend/api_requests/api_calls.dart';
import '/components/custom_icon/custom_icon_widget.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'mood_data_list_model.dart';
export 'mood_data_list_model.dart';

class MoodDataListWidget extends StatefulWidget {
  const MoodDataListWidget({super.key});

  static String routeName = 'moodDataList';
  static String routePath = '/moodDataList';

  @override
  State<MoodDataListWidget> createState() => _MoodDataListWidgetState();
}

class _MoodDataListWidgetState extends State<MoodDataListWidget> {
  late MoodDataListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MoodDataListModel());
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
      future: MoodGroup.allMoodCall.call(
        token: FFAppState().sessionToken,
        userId: FFAppState().userID,
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
        final moodDataListAllMoodResponse = snapshot.data!;

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
                  context.pushNamed(MoodWidget.routeName);
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'y6qwxbmc' /* Listado emociones */,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final moodData = MoodGroup.allMoodCall
                                .fila(
                                  moodDataListAllMoodResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];
                        if (moodData.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/default_img.png',
                            ),
                          );
                        }

                        return FlutterFlowDataTable<dynamic>(
                          controller: _model.paginatedDataTableController,
                          data: moodData,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '7dzi0omn' /* Fecha */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              fixedWidth:
                                  MediaQuery.sizeOf(context).width * 0.15,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'z14ucnpp' /* Emoción */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              fixedWidth:
                                  MediaQuery.sizeOf(context).width * 0.2,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'a232dtv3' /* Descripción */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Opacity(
                                  opacity: 0.0,
                                  child: Text(
                                    '',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              fixedWidth:
                                  MediaQuery.sizeOf(context).width * 0.15,
                            ),
                          ],
                          dataRowBuilder: (moodDataItem, moodDataIndex,
                                  selected, onSelectChanged) =>
                              DataRow(
                            color: WidgetStateProperty.all(
                              moodDataIndex % 2 == 0
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                            ),
                            cells: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  dateTimeFormat(
                                    "d/M/y",
                                    functions.string2Date(getJsonField(
                                      moodDataItem,
                                      r'''$.created_at''',
                                    ).toString()),
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.customIconModels.getModel(
                                      getJsonField(
                                        moodDataItem,
                                        r'''$.id''',
                                      ).toString(),
                                      moodDataIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: CustomIconWidget(
                                      key: Key(
                                        'Keyy11_${getJsonField(
                                          moodDataItem,
                                          r'''$.id''',
                                        ).toString()}',
                                      ),
                                      iconID: getJsonField(
                                        moodDataItem,
                                        r'''$.icon_id''',
                                      ),
                                      iconColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      iconSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                getJsonField(
                                  moodDataItem,
                                  r'''$.description''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Semantics(
                                    label: 'Edit mood',
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        FFAppState().moodDateSelected =
                                            dateTimeFormat(
                                          "yyyy-MM-dd",
                                          functions.string2Date(getJsonField(
                                            moodDataItem,
                                            r'''$.created_at''',
                                          ).toString()),
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        );
                                        FFAppState().moodIconTodayID =
                                            getJsonField(
                                          moodDataItem,
                                          r'''$.icon_id''',
                                        );
                                        FFAppState().update(() {});

                                        context.pushNamed(MoodWidget.routeName);
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.pen,
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Semantics(
                                      label: 'Remove mood',
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Eliminar registro'),
                                                        content: Text(
                                                            '¿Deseas eliminar el registro seleccionado?'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child: Text(
                                                                'Cancelar'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text(
                                                                'Eliminar'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            _model.apiDeleteMood =
                                                await MoodGroup.deleteMoodCall
                                                    .call(
                                              token: FFAppState().sessionToken,
                                              userId: FFAppState().userID,
                                              id: getJsonField(
                                                moodDataItem,
                                                r'''$.id''',
                                              ),
                                            );

                                            HapticFeedback.lightImpact();
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Eliminado correctamente',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .info,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 2500),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                              ),
                                            );

                                            context.pushNamed(
                                              MoodDataListWidget.routeName,
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.trashAlt,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ].map((c) => DataCell(c)).toList(),
                          ),
                          emptyBuilder: () => Center(
                            child: Image.asset(
                              'assets/images/default_img.png',
                            ),
                          ),
                          paginated: true,
                          selectable: false,
                          hidePaginator: false,
                          showFirstLastButtons: false,
                          headingRowHeight: 56.0,
                          dataRowHeight: 48.0,
                          columnSpacing: 0.0,
                          headingRowColor: FlutterFlowTheme.of(context).imc6,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          addHorizontalDivider: false,
                          addTopAndBottomDivider: false,
                          hideDefaultHorizontalDivider: false,
                          addVerticalDivider: false,
                        );
                      },
                    ),
                  ),
                  FlutterFlowAdBanner(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 50.0,
                    showsTestAd: false,
                    iOSAdUnitID: 'ca-app-pub-7682022282959009/2953626813',
                    androidAdUnitID: 'ca-app-pub-7682022282959009/8542495843',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
