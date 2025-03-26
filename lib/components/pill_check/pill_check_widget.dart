import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pill_check_model.dart';
export 'pill_check_model.dart';

class PillCheckWidget extends StatefulWidget {
  const PillCheckWidget({
    super.key,
    required this.pillName,
    required this.id,
    required this.switchState,
    required this.pillId,
  });

  final String? pillName;
  final int? id;
  final bool? switchState;
  final int? pillId;

  @override
  State<PillCheckWidget> createState() => _PillCheckWidgetState();
}

class _PillCheckWidgetState extends State<PillCheckWidget> {
  late PillCheckModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PillCheckModel());

    _model.switchValue = widget.switchState!;
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.pillName,
                  'null',
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Rubik',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Switch.adaptive(
              value: _model.switchValue!,
              onChanged: (newValue) async {
                safeSetState(() => _model.switchValue = newValue);
                if (newValue) {
                  unawaited(
                    () async {
                      await PillsGroup.addPillCall.call(
                        token: FFAppState().sessionToken,
                        userId: FFAppState().userID,
                        pillId: widget.pillId,
                        date: dateTimeFormat(
                          "yyyy-MM-dd",
                          getCurrentTimestamp,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      );
                    }(),
                  );
                  FFAppState().pillsToday = FFAppState().pillsToday + 1;
                  safeSetState(() {});
                  _model.pillsPercentOn = await actions.pillsPercent(
                    FFAppState().pillsToday,
                    FFAppState().pillsTotal,
                  );
                  FFAppState().pillsTotal = FFAppState().pillsTotal;
                  FFAppState().pillsTodayPercent = _model.pillsPercentOn!;
                  FFAppState().update(() {});

                  safeSetState(() {});
                } else {
                  unawaited(
                    () async {
                      await PillsGroup.deletePillCall.call(
                        token: FFAppState().sessionToken,
                        userId: FFAppState().userID,
                        pillId: widget.pillId,
                        date: dateTimeFormat(
                          "yyyy-MM-dd",
                          getCurrentTimestamp,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                      );
                    }(),
                  );
                  FFAppState().pillsToday = FFAppState().pillsToday + -1;
                  safeSetState(() {});
                  _model.pillsPercentOff = await actions.pillsPercent(
                    FFAppState().pillsToday,
                    FFAppState().pillsTotal,
                  );
                  FFAppState().pillsTodayPercent = _model.pillsPercentOff!;
                  safeSetState(() {});

                  safeSetState(() {});
                }
              },
              activeColor: FlutterFlowTheme.of(context).tertiary,
              activeTrackColor: FlutterFlowTheme.of(context).tertiary,
              inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
              inactiveThumbColor: FlutterFlowTheme.of(context).accent4,
            ),
          ],
        ),
      ),
    );
  }
}
