import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';

Future userData(BuildContext context) async {
  ApiCallResponse? userDataQuery;

  userDataQuery = await UserGroup.userCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
  );

  FFAppState().userFirstName = valueOrDefault<String>(
    UserGroup.userCall.firstName(
      (userDataQuery.jsonBody ?? ''),
    ),
    'null',
  );
  FFAppState().userLastName = valueOrDefault<String>(
    UserGroup.userCall.lastName(
      (userDataQuery.jsonBody ?? ''),
    ),
    'null',
  );
  FFAppState().waterGoal = valueOrDefault<int>(
    UserGroup.userCall.waterGoal(
      (userDataQuery.jsonBody ?? ''),
    ),
    0,
  );
  FFAppState().weight = valueOrDefault<double>(
    UserGroup.userCall.weightInitial(
      (userDataQuery.jsonBody ?? ''),
    ),
    0.0,
  );
  FFAppState().weightGoal = valueOrDefault<double>(
    UserGroup.userCall.weightGoal(
      (userDataQuery.jsonBody ?? ''),
    ),
    0.0,
  );
  FFAppState().height = valueOrDefault<double>(
    UserGroup.userCall.height(
      (userDataQuery.jsonBody ?? ''),
    ),
    0.0,
  );
  FFAppState().heightUnit = valueOrDefault<String>(
    UserGroup.userCall.heightUnit(
      (userDataQuery.jsonBody ?? ''),
    ),
    'kg',
  );
  FFAppState().update(() {});
}

Future weightData(BuildContext context) async {
  ApiCallResponse? apiResultWeightData;

  apiResultWeightData = await WeightGroup.lastWeightCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
  );

  FFAppState().weightLast = valueOrDefault<String>(
    WeightGroup.lastWeightCall.value(
      (apiResultWeightData.jsonBody ?? ''),
    ),
    '0',
  );
  FFAppState().update(() {});
}

Future pillsData(BuildContext context) async {
  ApiCallResponse? apiPillsTotal;
  ApiCallResponse? apiPillsToday;
  String? pillsPercent;

  apiPillsTotal = await PillsGroup.totalPillsCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
  );

  apiPillsToday = await PillsGroup.byDatePillsCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
    date: dateTimeFormat(
      "yyyy-MM-dd",
      getCurrentTimestamp,
      locale: FFLocalizations.of(context).languageCode,
    ),
  );

  pillsPercent = await actions.pillsPercent(
    PillsGroup.byDatePillsCall.totalToday(
      (apiPillsToday.jsonBody ?? ''),
    )!,
    PillsGroup.totalPillsCall.total(
      (apiPillsTotal.jsonBody ?? ''),
    )!,
  );
  FFAppState().pillsTotal = PillsGroup.totalPillsCall.total(
    (apiPillsTotal.jsonBody ?? ''),
  )!;
  FFAppState().pillsTodayPercent = pillsPercent;
  FFAppState().pillsToday = PillsGroup.byDatePillsCall.totalToday(
    (apiPillsToday.jsonBody ?? ''),
  )!;
  FFAppState().update(() {});
}

Future moodData(BuildContext context) async {
  ApiCallResponse? apiMoodByDate;
  ApiCallResponse? apiResult5fq;

  apiMoodByDate = await MoodGroup.byDateCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
    moodDate: functions.convertDateTime2Date(getCurrentTimestamp),
  );

  if ((apiMoodByDate.succeeded ?? true)) {
    FFAppState().moodIconTodayID = getJsonField(
      (apiMoodByDate.jsonBody ?? ''),
      r'''$.icon_id''',
    );
    FFAppState().moodDateSelected = FFAppState().moodDateSelected;
    apiResult5fq = await MoodGroup.allMoodCall.call(
      token: FFAppState().sessionToken,
      userId: FFAppState().userID,
    );

    if (!(apiResult5fq.succeeded ?? true)) {
      return;
    }
  } else {
    FFAppState().moodIconTodayID = 0;
    FFAppState().moodDateSelected = dateTimeFormat(
      "yyyy-MM-dd",
      getCurrentTimestamp,
      locale: FFLocalizations.of(context).languageCode,
    );
    return;
  }
}

Future measuresData(BuildContext context) async {
  ApiCallResponse? queryMeasure2Last;

  queryMeasure2Last = await MeasuresGroup.twoLastCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
  );

  if ((queryMeasure2Last.succeeded ?? true)) {
    FFAppState().measuresBeforeID = valueOrDefault<int>(
      MeasuresGroup.twoLastCall
          .iDs(
            (queryMeasure2Last.jsonBody ?? ''),
          )
          ?.lastOrNull,
      0,
    );
    FFAppState().measuresNowID = valueOrDefault<int>(
      MeasuresGroup.twoLastCall
          .iDs(
            (queryMeasure2Last.jsonBody ?? ''),
          )
          ?.firstOrNull,
      0,
    );
  } else {
    FFAppState().measuresBeforeID = 0;
    FFAppState().measuresNowID = 0;
  }
}

Future checkUserInfo(BuildContext context) async {
  ApiCallResponse? userInfoQuery;

  userInfoQuery = await UserGroup.isProfileCompletedCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
  );

  if (UserGroup.isProfileCompletedCall.isProfileCompleted(
        (userInfoQuery.jsonBody ?? ''),
      ) ==
      false) {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Aviso'),
          content: Text(
              'Es necesario completar los datos de tu perfil para poder mostrar tu información correctamente.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );

    context.goNamed(ProfileWidget.routeName);
  }
}

Future waterData(BuildContext context) async {
  ApiCallResponse? apiWaterPercentToday;
  String? iconoVaso;
  ApiCallResponse? apiTodayWater;

  apiWaterPercentToday = await WaterGroup.percentTodayCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
  );

  if ((apiWaterPercentToday.succeeded ?? true)) {
    FFAppState().waterPercent = valueOrDefault<int>(
      WaterGroup.percentTodayCall.percent(
        (apiWaterPercentToday.jsonBody ?? ''),
      ),
      0,
    );
    FFAppState().update(() {});
    iconoVaso = await actions.calculateIconVaso(
      FFAppState().waterPercent,
    );
    FFAppState().waterIcon = valueOrDefault<String>(
      iconoVaso,
      'vaso0',
    );
    apiTodayWater = await WaterGroup.todayTotalCall.call(
      token: FFAppState().sessionToken,
      userId: FFAppState().userID,
    );

    if ((apiTodayWater.succeeded ?? true)) {
      FFAppState().waterToday = valueOrDefault<int>(
        WaterGroup.todayTotalCall.total(
          (apiTodayWater.jsonBody ?? ''),
        ),
        0,
      );
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('error'),
            content: Text((apiTodayWater?.exceptionMessage ?? '')),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    }
  } else {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('error'),
          content: Text((apiWaterPercentToday?.exceptionMessage ?? '')),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}

Future workoutData(BuildContext context) async {
  ApiCallResponse? apiTimeWorkout;

  FFAppState().workoutDateSelected =
      functions.convertDateTime2Date(getCurrentTimestamp)!;
  FFAppState().update(() {});
  apiTimeWorkout = await WorkoutsGroup.workoutTIMEByDateCall.call(
    token: FFAppState().sessionToken,
    userId: FFAppState().userID,
    date: functions.convertDateTime2Date(getCurrentTimestamp),
  );

  if ((apiTimeWorkout.succeeded ?? true)) {
    FFAppState().workoutTimeVariable =
        WorkoutsGroup.workoutTIMEByDateCall.duration(
      (apiTimeWorkout.jsonBody ?? ''),
    )!;
    FFAppState().update(() {});
  }
}
