import 'package:janken/data/services/log/game_data_types.dart';
import 'package:localstore/localstore.dart';

/// ローカルストレージに保存されているログにアクセスするためのクラス
abstract class GameLogController {}

//singletons
class GameLogControllerImpl implements GameLogController {
  final db = Localstore.instance;
  static final GameLogControllerImpl _singleton =
      GameLogControllerImpl._internal();

  factory GameLogControllerImpl() {
    return _singleton;
  }

  GameLogControllerImpl._internal();

  Stream<Map<String, dynamic>> getLogStream(
    StreamLogTypes type,
  ) {
    return db.collection(type.name).stream;
  }

  Future<Map<String, dynamic>?> getLog(
    FutureLogTypes type,
  ) {
    return db.collection(type.name).get();
  }
}
