import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_ad_banner.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'workouts_data_list_model.dart';
export 'workouts_data_list_model.dart';

class WorkoutsDataListWidget extends StatefulWidget {
  const WorkoutsDataListWidget({super.key});

  static String routeName = 'workoutsDataList';
  static String routePath = '/workoutsDataList';

  @override
  State<WorkoutsDataListWidget> createState() => _WorkoutsDataListWidgetState();
}

class _WorkoutsDataListWidgetState extends State<WorkoutsDataListWidget> {
  late WorkoutsDataListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WorkoutsDataListModel());
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
      future: WorkoutsGroup.allWorkoutsCall.call(
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
        final workoutsDataListAllWorkoutsResponse = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF4566FE),
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
                  context.pushNamed(
                    WorkoutWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.leftToRight,
                      ),
                    },
                  );
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'ayc66wqd' /* Listado ejercicios */,
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
                        final workoutsData = WorkoutsGroup.allWorkoutsCall
                                .list(
                                  workoutsDataListAllWorkoutsResponse.jsonBody,
                                )
                                ?.toList() ??
                            [];
                        if (workoutsData.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/default_img.png',
                            ),
                          );
                        }

                        return FlutterFlowDataTable<dynamic>(
                          controller: _model.paginatedDataTableController,
                          data: workoutsData,
                          columnsBuilder: (onSortChanged) => [
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'xfjgvj9s' /* Fecha */,
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
                                  MediaQuery.sizeOf(context).width * 0.35,
                            ),
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'grnlpouo' /* Duración Total */,
                                  ),
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
                            DataColumn2(
                              label: DefaultTextStyle.merge(
                                softWrap: true,
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'vwuxvthy' /* Acción */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              fixedWidth:
                                  MediaQuery.sizeOf(context).width * 0.2,
                            ),
                          ],
                          dataRowBuilder: (workoutsDataItem, workoutsDataIndex,
                                  selected, onSelectChanged) =>
                              DataRow(
                            color: WidgetStateProperty.all(
                              workoutsDataIndex % 2 == 0
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : FlutterFlowTheme.of(context)
                                      .primaryBackground,
                            ),
                            cells: [
                              Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  getJsonField(
                                    workoutsDataItem,
                                    r'''$.date''',
                                  ).toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                          workoutsDataItem,
                                          r'''$.duration''',
                                        )?.toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'r5g1rwp6' /* min */,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Semantics(
                                          label: 'View workout',
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              FFAppState().workoutDateSelected =
                                                  getJsonField(
                                                workoutsDataItem,
                                                r'''$.unformat_date''',
                                              ).toString();
                                              FFAppState().update(() {});
                                              _model.apiTIME =
                                                  await WorkoutsGroup
                                                      .workoutTIMEByDateCall
                                                      .call(
                                                token:
                                                    FFAppState().sessionToken,
                                                userId: FFAppState().userID,
                                                date: getJsonField(
                                                  workoutsDataItem,
                                                  r'''$.unformat_date''',
                                                ).toString(),
                                              );

                                              FFAppState().workoutTimeVariable =
                                                  WorkoutsGroup
                                                      .workoutTIMEByDateCall
                                                      .duration(
                                                (_model.apiTIME?.jsonBody ??
                                                    ''),
                                              )!;
                                              safeSetState(() {});

                                              context.goNamed(
                                                  WorkoutWidget.routeName);

                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.remove_red_eye,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .success,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
                          headingRowColor: Color(0xFF4566FE),
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
