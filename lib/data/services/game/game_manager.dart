//singleton

class GameManager {
  static final GameManager _singleton = GameManager._internal();

  factory GameManager() {
    return _singleton;
  }

  GameManager._internal();

  // Stream<Map<String, dynamic>> getLogStream(
  //   StreamLogTypes type,
  // ) {
  //   return db.collection(type.name).stream;
  // }

  // Future<Map<String, dynamic>?> getLog(
  //   FutureLogTypes type,
  // ) {
  //   return db.collection(type.name).get();
  // }
}
