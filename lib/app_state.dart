import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _waterGoal = prefs.getInt('ff_waterGoal') ?? _waterGoal;
    });
    _safeInit(() {
      _waterIcon = prefs.getString('ff_waterIcon') ?? _waterIcon;
    });
    _safeInit(() {
      _waterChartXDay4 =
          prefs.getString('ff_waterChartXDay4') ?? _waterChartXDay4;
    });
    _safeInit(() {
      _waterChartXDay3 =
          prefs.getString('ff_waterChartXDay3') ?? _waterChartXDay3;
    });
    _safeInit(() {
      _waterChartXDay2 =
          prefs.getString('ff_waterChartXDay2') ?? _waterChartXDay2;
    });
    _safeInit(() {
      _waterChartXDay1 =
          prefs.getString('ff_waterChartXDay1') ?? _waterChartXDay1;
    });
    _safeInit(() {
      _waterChartXDay0 =
          prefs.getString('ff_waterChartXDay0') ?? _waterChartXDay0;
    });
    _safeInit(() {
      _waterChartYPercent4 =
          prefs.getInt('ff_waterChartYPercent4') ?? _waterChartYPercent4;
    });
    _safeInit(() {
      _waterChartYPercent3 =
          prefs.getInt('ff_waterChartYPercent3') ?? _waterChartYPercent3;
    });
    _safeInit(() {
      _waterChartYPercent2 =
          prefs.getInt('ff_waterChartYPercent2') ?? _waterChartYPercent2;
    });
    _safeInit(() {
      _waterChartYPercent1 =
          prefs.getInt('ff_waterChartYPercent1') ?? _waterChartYPercent1;
    });
    _safeInit(() {
      _waterChartYPercent0 =
          prefs.getInt('ff_waterChartYPercent0') ?? _waterChartYPercent0;
    });
    _safeInit(() {
      _waterChartXDaysList =
          prefs.getStringList('ff_waterChartXDaysList') ?? _waterChartXDaysList;
    });
    _safeInit(() {
      _waterChartYPercentList = prefs
              .getStringList('ff_waterChartYPercentList')
              ?.map(int.parse)
              .toList() ??
          _waterChartYPercentList;
    });
    _safeInit(() {
      _weightUnit = prefs.getString('ff_weightUnit') ?? _weightUnit;
    });
    _safeInit(() {
      _heightUnit = prefs.getString('ff_heightUnit') ?? _heightUnit;
    });
    _safeInit(() {
      _weightGoal = prefs.getDouble('ff_weightGoal') ?? _weightGoal;
    });
    _safeInit(() {
      _userFirstName = prefs.getString('ff_userFirstName') ?? _userFirstName;
    });
    _safeInit(() {
      _height = prefs.getDouble('ff_height') ?? _height;
    });
    _safeInit(() {
      _weight = prefs.getDouble('ff_weight') ?? _weight;
    });
    _safeInit(() {
      _pillsTotal = prefs.getInt('ff_pillsTotal') ?? _pillsTotal;
    });
    _safeInit(() {
      _pillsTodayPercent =
          prefs.getString('ff_pillsTodayPercent') ?? _pillsTodayPercent;
    });
    _safeInit(() {
      _moodIconTodayID = prefs.getInt('ff_moodIconTodayID') ?? _moodIconTodayID;
    });
    _safeInit(() {
      _weightMapBackground =
          prefs.getString('ff_weightMapBackground') ?? _weightMapBackground;
    });
    _safeInit(() {
      _weightColorText =
          prefs.getString('ff_weightColorText') ?? _weightColorText;
    });
    _safeInit(() {
      _weightColorMonth =
          prefs.getString('ff_weightColorMonth') ?? _weightColorMonth;
    });
    _safeInit(() {
      _weightColorTitle =
          prefs.getString('ff_weightColorTitle') ?? _weightColorTitle;
    });
    _safeInit(() {
      _measuresBeforeID =
          prefs.getInt('ff_measuresBeforeID') ?? _measuresBeforeID;
    });
    _safeInit(() {
      _measuresNowID = prefs.getInt('ff_measuresNowID') ?? _measuresNowID;
    });
    _safeInit(() {
      _mealDateSelected =
          prefs.getString('ff_mealDateSelected') ?? _mealDateSelected;
    });
    _safeInit(() {
      _workoutDateSelected =
          prefs.getString('ff_workoutDateSelected') ?? _workoutDateSelected;
    });
    _safeInit(() {
      _workoutTimeVariable =
          prefs.getInt('ff_workoutTimeVariable') ?? _workoutTimeVariable;
    });
    _safeInit(() {
      _mealsDateSelected =
          prefs.getString('ff_mealsDateSelected') ?? _mealsDateSelected;
    });
    _safeInit(() {
      _moodDateSelected =
          prefs.getString('ff_moodDateSelected') ?? _moodDateSelected;
    });
    _safeInit(() {
      _userInfo = prefs.getString('ff_userInfo') ?? _userInfo;
    });
    _safeInit(() {
      _sessionToken = prefs.getString('ff_sessionToken') ?? _sessionToken;
    });
    _safeInit(() {
      _userID = prefs.getInt('ff_userID') ?? _userID;
    });
    _safeInit(() {
      _weightLast = prefs.getString('ff_weightLast') ?? _weightLast;
    });
    _safeInit(() {
      _waterPercent = prefs.getInt('ff_waterPercent') ?? _waterPercent;
    });
    _safeInit(() {
      _waterToday = prefs.getInt('ff_waterToday') ?? _waterToday;
    });
    _safeInit(() {
      _pillsToday = prefs.getInt('ff_pillsToday') ?? _pillsToday;
    });
    _safeInit(() {
      _isCacheOverride =
          prefs.getBool('ff_isCacheOverride') ?? _isCacheOverride;
    });
    _safeInit(() {
      _lastCacheTime = prefs.containsKey('ff_lastCacheTime')
          ? DateTime.fromMillisecondsSinceEpoch(
              prefs.getInt('ff_lastCacheTime')!)
          : _lastCacheTime;
    });
    _safeInit(() {
      _showAds = prefs.getBool('ff_showAds') ?? _showAds;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _waterGoal = 0;
  int get waterGoal => _waterGoal;
  set waterGoal(int value) {
    _waterGoal = value;
    prefs.setInt('ff_waterGoal', value);
  }

  String _waterIcon = '';
  String get waterIcon => _waterIcon;
  set waterIcon(String value) {
    _waterIcon = value;
    prefs.setString('ff_waterIcon', value);
  }

  String _waterChartXDay4 = '';
  String get waterChartXDay4 => _waterChartXDay4;
  set waterChartXDay4(String value) {
    _waterChartXDay4 = value;
    prefs.setString('ff_waterChartXDay4', value);
  }

  String _waterChartXDay3 = '';
  String get waterChartXDay3 => _waterChartXDay3;
  set waterChartXDay3(String value) {
    _waterChartXDay3 = value;
    prefs.setString('ff_waterChartXDay3', value);
  }

  String _waterChartXDay2 = '';
  String get waterChartXDay2 => _waterChartXDay2;
  set waterChartXDay2(String value) {
    _waterChartXDay2 = value;
    prefs.setString('ff_waterChartXDay2', value);
  }

  String _waterChartXDay1 = '';
  String get waterChartXDay1 => _waterChartXDay1;
  set waterChartXDay1(String value) {
    _waterChartXDay1 = value;
    prefs.setString('ff_waterChartXDay1', value);
  }

  String _waterChartXDay0 = '';
  String get waterChartXDay0 => _waterChartXDay0;
  set waterChartXDay0(String value) {
    _waterChartXDay0 = value;
    prefs.setString('ff_waterChartXDay0', value);
  }

  int _waterChartYPercent4 = 0;
  int get waterChartYPercent4 => _waterChartYPercent4;
  set waterChartYPercent4(int value) {
    _waterChartYPercent4 = value;
    prefs.setInt('ff_waterChartYPercent4', value);
  }

  int _waterChartYPercent3 = 0;
  int get waterChartYPercent3 => _waterChartYPercent3;
  set waterChartYPercent3(int value) {
    _waterChartYPercent3 = value;
    prefs.setInt('ff_waterChartYPercent3', value);
  }

  int _waterChartYPercent2 = 0;
  int get waterChartYPercent2 => _waterChartYPercent2;
  set waterChartYPercent2(int value) {
    _waterChartYPercent2 = value;
    prefs.setInt('ff_waterChartYPercent2', value);
  }

  int _waterChartYPercent1 = 0;
  int get waterChartYPercent1 => _waterChartYPercent1;
  set waterChartYPercent1(int value) {
    _waterChartYPercent1 = value;
    prefs.setInt('ff_waterChartYPercent1', value);
  }

  int _waterChartYPercent0 = 0;
  int get waterChartYPercent0 => _waterChartYPercent0;
  set waterChartYPercent0(int value) {
    _waterChartYPercent0 = value;
    prefs.setInt('ff_waterChartYPercent0', value);
  }

  List<String> _waterChartXDaysList = [];
  List<String> get waterChartXDaysList => _waterChartXDaysList;
  set waterChartXDaysList(List<String> value) {
    _waterChartXDaysList = value;
    prefs.setStringList('ff_waterChartXDaysList', value);
  }

  void addToWaterChartXDaysList(String value) {
    waterChartXDaysList.add(value);
    prefs.setStringList('ff_waterChartXDaysList', _waterChartXDaysList);
  }

  void removeFromWaterChartXDaysList(String value) {
    waterChartXDaysList.remove(value);
    prefs.setStringList('ff_waterChartXDaysList', _waterChartXDaysList);
  }

  void removeAtIndexFromWaterChartXDaysList(int index) {
    waterChartXDaysList.removeAt(index);
    prefs.setStringList('ff_waterChartXDaysList', _waterChartXDaysList);
  }

  void updateWaterChartXDaysListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    waterChartXDaysList[index] = updateFn(_waterChartXDaysList[index]);
    prefs.setStringList('ff_waterChartXDaysList', _waterChartXDaysList);
  }

  void insertAtIndexInWaterChartXDaysList(int index, String value) {
    waterChartXDaysList.insert(index, value);
    prefs.setStringList('ff_waterChartXDaysList', _waterChartXDaysList);
  }

  List<int> _waterChartYPercentList = [];
  List<int> get waterChartYPercentList => _waterChartYPercentList;
  set waterChartYPercentList(List<int> value) {
    _waterChartYPercentList = value;
    prefs.setStringList(
        'ff_waterChartYPercentList', value.map((x) => x.toString()).toList());
  }

  void addToWaterChartYPercentList(int value) {
    waterChartYPercentList.add(value);
    prefs.setStringList('ff_waterChartYPercentList',
        _waterChartYPercentList.map((x) => x.toString()).toList());
  }

  void removeFromWaterChartYPercentList(int value) {
    waterChartYPercentList.remove(value);
    prefs.setStringList('ff_waterChartYPercentList',
        _waterChartYPercentList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromWaterChartYPercentList(int index) {
    waterChartYPercentList.removeAt(index);
    prefs.setStringList('ff_waterChartYPercentList',
        _waterChartYPercentList.map((x) => x.toString()).toList());
  }

  void updateWaterChartYPercentListAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    waterChartYPercentList[index] = updateFn(_waterChartYPercentList[index]);
    prefs.setStringList('ff_waterChartYPercentList',
        _waterChartYPercentList.map((x) => x.toString()).toList());
  }

  void insertAtIndexInWaterChartYPercentList(int index, int value) {
    waterChartYPercentList.insert(index, value);
    prefs.setStringList('ff_waterChartYPercentList',
        _waterChartYPercentList.map((x) => x.toString()).toList());
  }

  String _weightUnit = 'kg';
  String get weightUnit => _weightUnit;
  set weightUnit(String value) {
    _weightUnit = value;
    prefs.setString('ff_weightUnit', value);
  }

  String _heightUnit = 'cm';
  String get heightUnit => _heightUnit;
  set heightUnit(String value) {
    _heightUnit = value;
    prefs.setString('ff_heightUnit', value);
  }

  double _weightGoal = 0.0;
  double get weightGoal => _weightGoal;
  set weightGoal(double value) {
    _weightGoal = value;
    prefs.setDouble('ff_weightGoal', value);
  }

  String _userFirstName = '';
  String get userFirstName => _userFirstName;
  set userFirstName(String value) {
    _userFirstName = value;
    prefs.setString('ff_userFirstName', value);
  }

  String _userLastName = '';
  String get userLastName => _userLastName;
  set userLastName(String value) {
    _userLastName = value;
  }

  double _height = 0.0;
  double get height => _height;
  set height(double value) {
    _height = value;
    prefs.setDouble('ff_height', value);
  }

  double _weight = 0.0;
  double get weight => _weight;
  set weight(double value) {
    _weight = value;
    prefs.setDouble('ff_weight', value);
  }

  int _pillsTotal = 0;
  int get pillsTotal => _pillsTotal;
  set pillsTotal(int value) {
    _pillsTotal = value;
    prefs.setInt('ff_pillsTotal', value);
  }

  String _pillsTodayPercent = '';
  String get pillsTodayPercent => _pillsTodayPercent;
  set pillsTodayPercent(String value) {
    _pillsTodayPercent = value;
    prefs.setString('ff_pillsTodayPercent', value);
  }

  int _moodIconTodayID = 0;
  int get moodIconTodayID => _moodIconTodayID;
  set moodIconTodayID(int value) {
    _moodIconTodayID = value;
    prefs.setInt('ff_moodIconTodayID', value);
  }

  String _weightMapBackground = '';
  String get weightMapBackground => _weightMapBackground;
  set weightMapBackground(String value) {
    _weightMapBackground = value;
    prefs.setString('ff_weightMapBackground', value);
  }

  String _weightColorText = '';
  String get weightColorText => _weightColorText;
  set weightColorText(String value) {
    _weightColorText = value;
    prefs.setString('ff_weightColorText', value);
  }

  String _weightColorMonth = '';
  String get weightColorMonth => _weightColorMonth;
  set weightColorMonth(String value) {
    _weightColorMonth = value;
    prefs.setString('ff_weightColorMonth', value);
  }

  String _weightColorTitle = '';
  String get weightColorTitle => _weightColorTitle;
  set weightColorTitle(String value) {
    _weightColorTitle = value;
    prefs.setString('ff_weightColorTitle', value);
  }

  int _measuresBeforeID = 0;
  int get measuresBeforeID => _measuresBeforeID;
  set measuresBeforeID(int value) {
    _measuresBeforeID = value;
    prefs.setInt('ff_measuresBeforeID', value);
  }

  int _measuresNowID = 0;
  int get measuresNowID => _measuresNowID;
  set measuresNowID(int value) {
    _measuresNowID = value;
    prefs.setInt('ff_measuresNowID', value);
  }

  String _mealDateSelected = '';
  String get mealDateSelected => _mealDateSelected;
  set mealDateSelected(String value) {
    _mealDateSelected = value;
    prefs.setString('ff_mealDateSelected', value);
  }

  String _workoutDateSelected = '';
  String get workoutDateSelected => _workoutDateSelected;
  set workoutDateSelected(String value) {
    _workoutDateSelected = value;
    prefs.setString('ff_workoutDateSelected', value);
  }

  int _workoutTimeVariable = 0;
  int get workoutTimeVariable => _workoutTimeVariable;
  set workoutTimeVariable(int value) {
    _workoutTimeVariable = value;
    prefs.setInt('ff_workoutTimeVariable', value);
  }

  String _mealsDateSelected = '';
  String get mealsDateSelected => _mealsDateSelected;
  set mealsDateSelected(String value) {
    _mealsDateSelected = value;
    prefs.setString('ff_mealsDateSelected', value);
  }

  String _moodDateSelected = '';
  String get moodDateSelected => _moodDateSelected;
  set moodDateSelected(String value) {
    _moodDateSelected = value;
    prefs.setString('ff_moodDateSelected', value);
  }

  String _userInfo = '';
  String get userInfo => _userInfo;
  set userInfo(String value) {
    _userInfo = value;
    prefs.setString('ff_userInfo', value);
  }

  String _sessionToken = '';
  String get sessionToken => _sessionToken;
  set sessionToken(String value) {
    _sessionToken = value;
    prefs.setString('ff_sessionToken', value);
  }

  int _userID = 0;
  int get userID => _userID;
  set userID(int value) {
    _userID = value;
    prefs.setInt('ff_userID', value);
  }

  String _weightLast = '';
  String get weightLast => _weightLast;
  set weightLast(String value) {
    _weightLast = value;
    prefs.setString('ff_weightLast', value);
  }

  int _waterPercent = 0;
  int get waterPercent => _waterPercent;
  set waterPercent(int value) {
    _waterPercent = value;
    prefs.setInt('ff_waterPercent', value);
  }

  int _waterToday = 0;
  int get waterToday => _waterToday;
  set waterToday(int value) {
    _waterToday = value;
    prefs.setInt('ff_waterToday', value);
  }

  int _pillsToday = 0;
  int get pillsToday => _pillsToday;
  set pillsToday(int value) {
    _pillsToday = value;
    prefs.setInt('ff_pillsToday', value);
  }

  bool _isCacheOverride = false;
  bool get isCacheOverride => _isCacheOverride;
  set isCacheOverride(bool value) {
    _isCacheOverride = value;
    prefs.setBool('ff_isCacheOverride', value);
  }

  DateTime? _lastCacheTime;
  DateTime? get lastCacheTime => _lastCacheTime;
  set lastCacheTime(DateTime? value) {
    _lastCacheTime = value;
    value != null
        ? prefs.setInt('ff_lastCacheTime', value.millisecondsSinceEpoch)
        : prefs.remove('ff_lastCacheTime');
  }

  bool _showAds = true;
  bool get showAds => _showAds;
  set showAds(bool value) {
    _showAds = value;
    prefs.setBool('ff_showAds', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
