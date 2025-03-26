import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_icon_model.dart';
export 'custom_icon_model.dart';

class CustomIconWidget extends StatefulWidget {
  const CustomIconWidget({
    super.key,
    int? iconID,
    this.iconColor,
    int? iconSize,
  })  : this.iconID = iconID ?? 0,
        this.iconSize = iconSize ?? 50;

  final int iconID;
  final Color? iconColor;
  final int iconSize;

  @override
  State<CustomIconWidget> createState() => _CustomIconWidgetState();
}

class _CustomIconWidgetState extends State<CustomIconWidget> {
  late CustomIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomIconModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Opacity(
          opacity: widget.iconID == 16 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'm072s4vl' /* 🥶 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 0 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('0'),
              FFLocalizations.of(context).getText(
                '6rjl0e23' /* 🫥 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 1 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'khlznhqh' /* ☹️ */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 2 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'q5w2t5po' /* 😍 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 3 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                '8qo3xsjb' /* 😜 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 4 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                '7yysjk8o' /* 🤬 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 5 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'ukn36lj2' /* 🤮 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 6 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'kc8s2x1e' /* 🥺 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 7 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                '39lleqp7' /* 😆 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 8 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'dhklq8to' /* 😠 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 9 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'jak3th7p' /* 😢 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 10 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'pm69ztkh' /* 😴 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 11 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                '9vlfa9cz' /* 😵‍💫 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 12 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'yyr5w96o' /* 🙂 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 13 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'fg4t09n5' /* 🤒 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 14 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                'liepkyr3' /* 🤢 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
        Opacity(
          opacity: widget.iconID == 15 ? 1.0 : 0.0,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              key: ValueKey('1'),
              FFLocalizations.of(context).getText(
                '4k9shcm5' /* 🥳 */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Roboto',
                    fontSize: valueOrDefault<double>(
                      widget.iconSize.toDouble(),
                      40.0,
                    ),
                    letterSpacing: 0.0,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
