import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start User Group Code

class UserGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static UserCall userCall = UserCall();
  static IsProfileCompletedCall isProfileCompletedCall =
      IsProfileCompletedCall();
  static UpdateCall updateCall = UpdateCall();
  static ReportDataCall reportDataCall = ReportDataCall();
  static ReportDataPillsCall reportDataPillsCall = ReportDataPillsCall();
  static ReportDataWorkoutCall reportDataWorkoutCall = ReportDataWorkoutCall();
  static ReportDataMoodCall reportDataMoodCall = ReportDataMoodCall();
  static ReportDataMeasuresCall reportDataMeasuresCall =
      ReportDataMeasuresCall();
}

class UserCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'User',
      apiUrl: '${baseUrl}/${userId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  double? weightInitial(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.weightInitial''',
      ));
  double? height(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.height''',
      ));
  String? weightUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.weightUnit''',
      ));
  String? heightUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.heightUnit''',
      ));
  dynamic surgeryDate(dynamic response) => getJsonField(
        response,
        r'''$.surgery_date''',
      );
  int? waterGoal(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.water_goal''',
      ));
  double? weightGoal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.weight_goal''',
      ));
}

class IsProfileCompletedCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'isProfileCompleted',
      apiUrl: '${baseUrl}/${userId}/isProfileCompleted',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? isProfileCompleted(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isProfileCompleted''',
      ));
}

class UpdateCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? firstName = '',
    String? lastName = '',
    double? weightInitial,
    double? height,
    String? weightUnit = '',
    String? heightUnit = '',
    String? surgeryDate = '',
    double? weightGoal,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update',
      apiUrl: '${baseUrl}/${userId}/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'firstName': firstName,
        'lastName': lastName,
        'weightInitial': weightInitial,
        'height': height,
        'weightUnit': weightUnit,
        'heightUnit': heightUnit,
        'surgeryDate': surgeryDate,
        'user_id': userId,
        'weight_goal': weightGoal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.lastName''',
      ));
  double? weightInitial(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.weightInitial''',
      ));
  double? height(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.height''',
      ));
  String? weightUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.weightUnit''',
      ));
  String? heightUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.heightUnit''',
      ));
  dynamic surgeryDate(dynamic response) => getJsonField(
        response,
        r'''$.surgery_date''',
      );
}

class ReportDataCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Report Data',
      apiUrl: '${baseUrl}/${userId}/report/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? waterTotal(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.water_total''',
      ));
  String? weightTotal(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.weight_total''',
      ));
  int? pills(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.pills''',
      ));
  int? mood(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mood''',
      ));
  int? measures(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.measures''',
      ));
  int? meals(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.meals''',
      ));
  int? workouts(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.workouts''',
      ));
}

class ReportDataPillsCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Report Data  Pills',
      apiUrl: '${baseUrl}/${userId}/report/pill/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  List? list(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ReportDataWorkoutCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Report Data  Workout',
      apiUrl: '${baseUrl}/${userId}/report/workout/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? duration(dynamic response) => (getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? list(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class ReportDataMoodCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Report Data  Mood',
      apiUrl: '${baseUrl}/${userId}/report/mood/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? iconID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].icon_id''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
}

class ReportDataMeasuresCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? userId,
    String? token = '',
  }) async {
    final baseUrl = UserGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Report Data  Measures',
      apiUrl: '${baseUrl}/${userId}/report/measures/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? thigh(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].thigh''',
      ));
  double? hip(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].hip''',
      ));
  double? abdomen(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].abdomen''',
      ));
  double? waist(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].waist''',
      ));
  double? arm(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].arm''',
      ));
  double? chest(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].chest''',
      ));
}

/// End User Group Code

/// Start Water Group Code

class WaterGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/water';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static PercentTodayCall percentTodayCall = PercentTodayCall();
  static TodayTotalCall todayTotalCall = TodayTotalCall();
  static AddWaterCall addWaterCall = AddWaterCall();
  static UpdateWaterGoalCall updateWaterGoalCall = UpdateWaterGoalCall();
  static ChartCall chartCall = ChartCall();
}

class PercentTodayCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WaterGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Percent Today',
      apiUrl: '${baseUrl}/percent_today',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? percent(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.percent''',
      ));
}

class TodayTotalCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WaterGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Today Total',
      apiUrl: '${baseUrl}/today_total',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
}

class AddWaterCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WaterGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Water',
      apiUrl: '${baseUrl}/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalToday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_today''',
      ));
}

class UpdateWaterGoalCall {
  Future<ApiCallResponse> call({
    int? waterGoal,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WaterGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Water Goal',
      apiUrl: '${baseUrl}/update_water_goal',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'water_goal': waterGoal,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? percent(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.percent''',
      ));
}

class ChartCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WaterGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Chart',
      apiUrl: '${baseUrl}/chart',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? listX(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? listY(dynamic response) => (getJsonField(
        response,
        r'''$[:].total''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

/// End Water Group Code

/// Start Mood Group Code

class MoodGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/mood';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static AllMoodCall allMoodCall = AllMoodCall();
  static ByDateCall byDateCall = ByDateCall();
  static AddOrUpdateMoodCall addOrUpdateMoodCall = AddOrUpdateMoodCall();
  static DeleteMoodCall deleteMoodCall = DeleteMoodCall();
}

class AllMoodCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MoodGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'All Mood',
      apiUrl: '${baseUrl}/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? fila(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class ByDateCall {
  Future<ApiCallResponse> call({
    String? moodDate = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MoodGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'By Date',
      apiUrl: '${baseUrl}/date/${moodDate}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? iconID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.icon_id''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
}

class AddOrUpdateMoodCall {
  Future<ApiCallResponse> call({
    int? iconId,
    String? description = '',
    String? moodDate = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MoodGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add or Update Mood',
      apiUrl: '${baseUrl}/add_or_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'icon_id': iconId,
        'description': description,
        'mood_date': moodDate,
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMoodCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MoodGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Mood',
      apiUrl: '${baseUrl}/delete',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Mood Group Code

/// Start Measures Group Code

class MeasuresGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/measures';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static AllMeasuresCall allMeasuresCall = AllMeasuresCall();
  static TwoLastCall twoLastCall = TwoLastCall();
  static MeasuresByDateCall measuresByDateCall = MeasuresByDateCall();
  static MeasuresByIdCall measuresByIdCall = MeasuresByIdCall();
  static AddMeasuresCall addMeasuresCall = AddMeasuresCall();
  static UpdateMeasuresCall updateMeasuresCall = UpdateMeasuresCall();
  static DeleteMeasuresCall deleteMeasuresCall = DeleteMeasuresCall();
}

class AllMeasuresCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'All Measures',
      apiUrl: '${baseUrl}/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<double>? chest(dynamic response) => (getJsonField(
        response,
        r'''$[:].chest''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? arm(dynamic response) => (getJsonField(
        response,
        r'''$[:].arm''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? waist(dynamic response) => (getJsonField(
        response,
        r'''$[:].waist''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? abdomen(dynamic response) => (getJsonField(
        response,
        r'''$[:].abdomen''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? hip(dynamic response) => (getJsonField(
        response,
        r'''$[:].hip''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<double>? thigh(dynamic response) => (getJsonField(
        response,
        r'''$[:].thigh''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? createdAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? datesFormated(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? listResult(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class TwoLastCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Two Last',
      apiUrl: '${baseUrl}/two_last',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? fila(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  List<int>? iDs(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class MeasuresByDateCall {
  Future<ApiCallResponse> call({
    String? measuresDate = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Measures By Date ',
      apiUrl: '${baseUrl}/date/${measuresDate}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? iconID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].icon_id''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].description''',
      ));
}

class MeasuresByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Measures By Id',
      apiUrl: '${baseUrl}/id/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  double? chest(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.chest''',
      ));
  double? arm(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.arm''',
      ));
  double? waist(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.waist''',
      ));
  double? abdomen(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.abdomen''',
      ));
  double? hip(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.hip''',
      ));
  double? thigh(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.thigh''',
      ));
  String? createdAT(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
}

class AddMeasuresCall {
  Future<ApiCallResponse> call({
    double? chest,
    double? arm,
    double? waist,
    double? abdomen,
    double? hip,
    double? thigh,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Measures',
      apiUrl: '${baseUrl}/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'chest': chest,
        'arm': arm,
        'waist': waist,
        'abdomen': abdomen,
        'hip': hip,
        'thigh': thigh,
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateMeasuresCall {
  Future<ApiCallResponse> call({
    double? chest,
    double? arm,
    double? waist,
    double? abdomen,
    double? hip,
    double? thigh,
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Measures',
      apiUrl: '${baseUrl}/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'chest': chest,
        'arm': arm,
        'waist': waist,
        'abdomen': abdomen,
        'hip': hip,
        'thigh': thigh,
        'user_id': userId,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMeasuresCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MeasuresGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Measures',
      apiUrl: '${baseUrl}/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Measures Group Code

/// Start Meals Group Code

class MealsGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/meals';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static AllMealsCall allMealsCall = AllMealsCall();
  static MealsByDateCall mealsByDateCall = MealsByDateCall();
  static AddMealsCall addMealsCall = AddMealsCall();
  static AddOrUpdateMealsCall addOrUpdateMealsCall = AddOrUpdateMealsCall();
  static DeleteMealsCall deleteMealsCall = DeleteMealsCall();
}

class AllMealsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MealsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'All Meals',
      apiUrl: '${baseUrl}/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? breakfastText(dynamic response) => (getJsonField(
        response,
        r'''$[:].breakfast_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? breakfastDumping(dynamic response) => (getJsonField(
        response,
        r'''$[:].breakfast_dumping''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? lunchText(dynamic response) => (getJsonField(
        response,
        r'''$[:].lunch_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? lunchDumping(dynamic response) => (getJsonField(
        response,
        r'''$[:].lunch_dumping''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? dinnerText(dynamic response) => (getJsonField(
        response,
        r'''$[:].dinner_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? dinnerDumping(dynamic response) => (getJsonField(
        response,
        r'''$[:].dinner_dumping''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? snacksText(dynamic response) => (getJsonField(
        response,
        r'''$[:].snacks_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? mealsList(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  List<int>? snacksDumping(dynamic response) => (getJsonField(
        response,
        r'''$[:].snacks_dumping''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class MealsByDateCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MealsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Meals By Date',
      apiUrl: '${baseUrl}/date/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? breakfastText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].breakfast_text''',
      ));
  int? breakfastDumping(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].breakfast_dumping''',
      ));
  String? lunchText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].lunch_text''',
      ));
  int? lunchDumping(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].lunch_dumping''',
      ));
  String? dinnerText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].dinner_text''',
      ));
  int? dinnerDumping(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].dinner_dumping''',
      ));
  String? snacksText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].snacks_text''',
      ));
  int? snacksDumping(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].snacks_dumping''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
}

class AddMealsCall {
  Future<ApiCallResponse> call({
    String? breakfastText = '',
    int? breakfastDumping,
    String? lunchText = '',
    int? lunchDumping,
    int? dinnerDumping,
    String? snacksText = '',
    int? snacksDumping,
    String? dinnerText = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MealsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Meals',
      apiUrl: '${baseUrl}/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'breakfast_text': breakfastText,
        'breakfast_dumping': breakfastDumping,
        'lunch_text': lunchText,
        'lunch_dumping': lunchDumping,
        'dinner_text': dinnerText,
        'dinner_dumping': dinnerDumping,
        'user_id': userId,
        'snacks_text': snacksText,
        'snacks_dumping': snacksDumping,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddOrUpdateMealsCall {
  Future<ApiCallResponse> call({
    String? breakfastText = '',
    int? breakfastDumping,
    String? lunchText = '',
    int? lunchDumping,
    int? dinnerDumping,
    String? snacksText = '',
    int? snacksDumping,
    String? dinnerText = '',
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MealsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add or Update Meals',
      apiUrl: '${baseUrl}/add_or_update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'breakfast_text': breakfastText,
        'breakfast_dumping': breakfastDumping,
        'lunch_text': lunchText,
        'lunch_dumping': lunchDumping,
        'dinner_text': dinnerText,
        'dinner_dumping': dinnerDumping,
        'user_id': userId,
        'snacks_text': snacksText,
        'snacks_dumping': snacksDumping,
        'date': date,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMealsCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = MealsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Meals',
      apiUrl: '${baseUrl}/delete',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Meals Group Code

/// Start Workouts Group Code

class WorkoutsGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/workouts';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static AllWorkoutsCall allWorkoutsCall = AllWorkoutsCall();
  static WorkoutByDateCall workoutByDateCall = WorkoutByDateCall();
  static WorkoutTIMEByDateCall workoutTIMEByDateCall = WorkoutTIMEByDateCall();
  static AddWorkoutCall addWorkoutCall = AddWorkoutCall();
  static UpdateWorkoutCall updateWorkoutCall = UpdateWorkoutCall();
  static DeleteWorkoutCall deleteWorkoutCall = DeleteWorkoutCall();
}

class AllWorkoutsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WorkoutsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'All Workouts',
      apiUrl: '${baseUrl}/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? duration(dynamic response) => (getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? list(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
  List<String>? unformateDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].unformat_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class WorkoutByDateCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WorkoutsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Workout By Date',
      apiUrl: '${baseUrl}/date/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? duration(dynamic response) => (getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? list(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class WorkoutTIMEByDateCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WorkoutsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Workout  TIME By Date',
      apiUrl: '${baseUrl}/time_by_date/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? duration(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.duration''',
      ));
}

class AddWorkoutCall {
  Future<ApiCallResponse> call({
    String? description = '',
    int? duration,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WorkoutsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Workout',
      apiUrl: '${baseUrl}/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'description': description,
        'duration': duration,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateWorkoutCall {
  Future<ApiCallResponse> call({
    int? duration,
    String? description = '',
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WorkoutsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Workout',
      apiUrl: '${baseUrl}/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'duration': duration,
        'description': description,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteWorkoutCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WorkoutsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Workout',
      apiUrl: '${baseUrl}/delete',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Workouts Group Code

/// Start Weight Group Code

class WeightGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/weight';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static AllCall allCall = AllCall();
  static LastWeightCall lastWeightCall = LastWeightCall();
  static WeightChartCall weightChartCall = WeightChartCall();
  static MapCall mapCall = MapCall();
  static AddWeightCall addWeightCall = AddWeightCall();
  static CreateEmptyMapCall createEmptyMapCall = CreateEmptyMapCall();
  static DeleteWeightCall deleteWeightCall = DeleteWeightCall();
  static UpdateOrCreateMapCall updateOrCreateMapCall = UpdateOrCreateMapCall();
}

class AllCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'All',
      apiUrl: '${baseUrl}/all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? values(dynamic response) => (getJsonField(
        response,
        r'''$[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? dates(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? allData(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class LastWeightCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Last Weight',
      apiUrl: '${baseUrl}/last',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  String? updatedAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.updated_at''',
      ));
  String? createdAt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  String? value(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.value''',
      ));
}

class WeightChartCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Weight Chart',
      apiUrl: '${baseUrl}/weight_chart',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? ids(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? values(dynamic response) => (getJsonField(
        response,
        r'''$[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class MapCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Map',
      apiUrl: '${baseUrl}/map',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  double? extravValue(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].extra_value''',
      ));
  double? extraDifference(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].extra_difference''',
      ));
  double? monthValue1(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_1''',
      ));
  double? monthValue2(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_2''',
      ));
  double? monthValue3(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_3''',
      ));
  double? monthValue4(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_4''',
      ));
  double? monthValue5(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_5''',
      ));
  double? monthValue6(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_6''',
      ));
  double? monthValue7(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_7''',
      ));
  double? monthValue8(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_8''',
      ));
  double? monthValue9(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_9''',
      ));
  double? monthValue10(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_10''',
      ));
  double? monthValue11(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_11''',
      ));
  double? monthValue12(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$[:].month_value_12''',
      ));
  String? colorText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].color_text''',
      ));
  String? colorMonth(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].color_month''',
      ));
  String? colorMonthTitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].color_month_title''',
      ));
  String? mapTitle(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].map_title''',
      ));
  String? extraField(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].extra_field''',
      ));
  String? montField1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_1''',
      ));
  String? montField2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_2''',
      ));
  String? montField3(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_3''',
      ));
  String? montField4(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_4''',
      ));
  String? montField5(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_5''',
      ));
  String? montField6(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_6''',
      ));
  String? montField7(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_7''',
      ));
  String? montField8(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_8''',
      ));
  String? montField9(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_9''',
      ));
  String? montField10(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_10''',
      ));
  String? montField11(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_11''',
      ));
  String? montField12(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].month_field_12''',
      ));
  String? background(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].background''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
}

class AddWeightCall {
  Future<ApiCallResponse> call({
    double? value,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Weight',
      apiUrl: '${baseUrl}/add',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'value': value,
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmptyMapCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Create Empty Map',
      apiUrl: '${baseUrl}/map/create_empty',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteWeightCall {
  Future<ApiCallResponse> call({
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Weight',
      apiUrl: '${baseUrl}/delete/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateOrCreateMapCall {
  Future<ApiCallResponse> call({
    String? extraField = '',
    double? extraValue,
    String? monthField1 = '',
    String? monthField2 = '',
    String? monthField3 = '',
    String? monthField4 = '',
    String? monthField5 = '',
    String? monthField6 = '',
    String? monthField7 = '',
    String? monthField8 = '',
    String? monthField9 = '',
    String? monthField10 = '',
    String? monthField11 = '',
    String? monthField12 = '',
    double? monthValue1,
    double? monthValue2,
    double? monthValue3,
    double? monthValue4,
    double? monthValue5,
    double? monthValue6,
    double? monthValue7,
    double? monthValue8,
    double? monthValue9,
    double? monthValue10,
    double? monthValue11,
    double? monthValue12,
    String? background = '',
    String? colorText = '',
    String? colorMonth = '',
    String? colorMonthTitle = '',
    String? mapTitle = '',
    double? extraDifference,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = WeightGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update  or Create map',
      apiUrl: '${baseUrl}/map/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'user_id': userId,
        'extra_field': extraField,
        'extra_value': extraValue,
        'month_field_1': monthField1,
        'month_field_2': monthField2,
        'month_field_3': monthField3,
        'month_field_4': monthField4,
        'month_field_5': monthField5,
        'month_field_6': monthField6,
        'month_field_7': monthField7,
        'month_field_8': monthField8,
        'month_field_9': monthField9,
        'month_field_10': monthField10,
        'month_field_11': monthField11,
        'month_field_12': monthField12,
        'month_value_1': monthValue1,
        'month_value_2': monthValue2,
        'month_value_3': monthValue3,
        'month_value_4': monthValue4,
        'month_value_5': monthValue5,
        'month_value_6': monthValue6,
        'month_value_7': monthValue7,
        'month_value_8': monthValue8,
        'month_value_9': monthValue9,
        'month_value_10': monthValue10,
        'month_value_11': monthValue11,
        'month_value_12': monthValue12,
        'background': background,
        'color_text': colorText,
        'color_month': colorMonth,
        'color_month_title': colorMonthTitle,
        'map_title': mapTitle,
        'extra_difference': extraDifference,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Weight Group Code

/// Start Pills Group Code

class PillsGroup {
  static String getBaseUrl({
    String? token = '',
    int? userId,
  }) =>
      'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/pills';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [Token]',
  };
  static ShowPillsListCall showPillsListCall = ShowPillsListCall();
  static ShowPillsListByDateCall showPillsListByDateCall =
      ShowPillsListByDateCall();
  static TotalPillsCall totalPillsCall = TotalPillsCall();
  static ByDatePillsCall byDatePillsCall = ByDatePillsCall();
  static TakenByDateCall takenByDateCall = TakenByDateCall();
  static DeletePillCall deletePillCall = DeletePillCall();
  static DeletePillFromListCall deletePillFromListCall =
      DeletePillFromListCall();
  static AddPillToListCall addPillToListCall = AddPillToListCall();
  static UpdatePillCall updatePillCall = UpdatePillCall();
  static AddPillCall addPillCall = AddPillCall();
}

class ShowPillsListCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Show Pills List',
      apiUrl: '${baseUrl}/show_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? results(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ShowPillsListByDateCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Show Pills List By Date',
      apiUrl: '${baseUrl}/show_by_date/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? results(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List<int>? taken(dynamic response) => (getJsonField(
        response,
        r'''$[:].taken''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class TotalPillsCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Total pills',
      apiUrl: '${baseUrl}/total_list',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
}

class ByDatePillsCall {
  Future<ApiCallResponse> call({
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'By Date Pills',
      apiUrl: '${baseUrl}/date/${date}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalToday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
}

class TakenByDateCall {
  Future<ApiCallResponse> call({
    int? pillId,
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Taken by Date',
      apiUrl: '${baseUrl}/pill_taken/${pillId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'pill_id': pillId,
        'date': date,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? taken(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.taken''',
      ));
}

class DeletePillCall {
  Future<ApiCallResponse> call({
    String? date = '',
    int? pillId,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Pill',
      apiUrl: '${baseUrl}/delete_pill',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'pill_id': pillId,
        'date': date,
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePillFromListCall {
  Future<ApiCallResponse> call({
    int? pillId,
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Delete Pill From List',
      apiUrl: '${baseUrl}/delete_from_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'pill_id': pillId,
        'date': date,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPillToListCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Pill To List',
      apiUrl: '${baseUrl}/add_to_list',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatePillCall {
  Future<ApiCallResponse> call({
    String? name = '',
    int? id,
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update Pill',
      apiUrl: '${baseUrl}/update',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'name': name,
        'user_id': userId,
        'id': id,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPillCall {
  Future<ApiCallResponse> call({
    int? pillId,
    String? date = '',
    String? token = '',
    int? userId,
  }) async {
    final baseUrl = PillsGroup.getBaseUrl(
      token: token,
      userId: userId,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Add Pill',
      apiUrl: '${baseUrl}/add_pill',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'date': date,
        'user_id': userId,
        'pill_id': pillId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Pills Group Code

class RegisterCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Register',
      apiUrl: 'https://www.retobariatrico.com/api_reto_bariatrico/api/register',
      callType: ApiCallType.POST,
      headers: {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Connection': 'keep-alive',
      },
      params: {
        'email': email,
        'password': password,
        'name': name,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
}

class RegisterNewUserDataCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    int? userId,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Register  New User Data',
      apiUrl: 'https://www.retobariatrico.com/api_reto_bariatrico/api/new_user',
      callType: ApiCallType.POST,
      headers: {
        'Accept': '*/*',
        'Accept-Encoding': 'gzip, deflate, br',
        'Connection': 'keep-alive',
      },
      params: {
        'firstName': firstName,
        'user_id': userId,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://www.retobariatrico.com/api_reto_bariatrico/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
}

class PasswordForgotCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Password Forgot',
      apiUrl:
          'https://www.retobariatrico.com/api_reto_bariatrico/api/forgot_password',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class CheckSessionCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Check Session',
      apiUrl:
          'https://www.retobariatrico.com/api_reto_bariatrico/api/user/${userId}/checkSession',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
