import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class RetoBariatricoSQLAuthUser {
  RetoBariatricoSQLAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<RetoBariatricoSQLAuthUser> retoBariatricoSQLAuthUserSubject =
    BehaviorSubject.seeded(RetoBariatricoSQLAuthUser(loggedIn: false));
Stream<RetoBariatricoSQLAuthUser> retoBariatricoSQLAuthUserStream() =>
    retoBariatricoSQLAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
