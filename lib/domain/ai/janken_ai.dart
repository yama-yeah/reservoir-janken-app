import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ml_reservoir/ml_reservoir.dart';

/// esnとリッジ回帰でそれぞれ学習するための挙動が複雑なので、このクラスで制御する
abstract class JankenAi {
  ReservoirModule get reservoirModule;
  Regressor Function(List<List<double>>, Object,
      {double lambda, RegressorType type}) get regressorFit;
  JankenAi();
  void train(
    List<List<List<double>>> trainX,
    List<List<List<double>>> trainY,
  );
  List<double> getNextHand(
    List<double> x, {
    bool refitRegressor = false,
    List<List<double>> trainY,
  });
  String save();
  void load(String json);
}

class JankenAiImpl implements JankenAi {
  @override
  final Regressor Function(List<List<double>>, Object,
      {double lambda, RegressorType type}) regressorFit;

  @override
  final ReservoirModule reservoirModule;

  Regressor? regressor;

  JankenAiImpl(
    this.reservoirModule,
    this.regressorFit,
  );

  @override
  void load(String json) {
    // TODO: implement load
  }

  @override
  String save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override

  ///一度に全てのデータを学習する
  ///ReservoirModuleの状態はリセットされる
  void train(List<List<List<double>>> trainX, List<List<List<double>>> trainY) {
    reservoirModule.resetState(); //状態をリセット
    final rawX = reservoirModule(trainX);
    final x = rawX[0];
    // print(rawX);
    // print(trainX);
    // print(trainY[0]);
    regressor = regressorFit(x, trainY[0]); //regressorを更新
  }

  List<List<double>> reduce(List<List<List<double>>> rawX) {
    final List<List<double>> x = [];
    for (var i = 0; i < rawX.length; i++) {
      final List<double> row = [];
      for (var j = 0; j < rawX[i].length; j++) {
        row.addAll(rawX[i][j]);
      }
      x.add(row);
    }
    return x;
  }

  @override
  List<double> getNextHand(List<double> x,
      {bool refitRegressor = false, List<List<double>> trainY = const []}) {
    if (refitRegressor) {
      final rawX = reservoirModule.stateLogs
          .map(
            (e) => e
                .map(
                  (e) => e.toList(),
                )
                .toList(),
          )
          .toList();
      final trainX = reduce(rawX);
      regressor = regressorFit(trainX, trainY);
    }
    final rawX = reservoirModule.next([x]);
    final trainX = rawX[0];
    //rawX.removeAt(0);
    final y = regressor!.predict(trainX) as List<List<double>>;
    return y[y.length - 1];
  }
}

/// 一様分布からランダムに手を選ぶAI
class MockJankenAi implements JankenAi {
  @override
  final Regressor Function(List<List<double>>, Object,
      {double lambda, RegressorType type}) regressorFit;

  @override
  final ReservoirModule reservoirModule;

  MockJankenAi(
    this.reservoirModule,
    this.regressorFit,
  );

  @override
  void load(String json) {}

  @override
  String save() {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  void train(List<List<List<double>>> trainX, List<List<List<double>>> trainY) {
    // TODO: implement train
  }

  @override
  List<double> getNextHand(List<double> x,
      {bool refitRegressor = false, List<List<double>> trainY = const []}) {
    // TODO: implement getNextHand
    throw UnimplementedError();
  }
}

final jankenAiProvider = Provider((ref) {
  final reservoir = ReservoirModule.newNetwork(6);
  const regressor = Regressor.fit;
  return JankenAiImpl(
    reservoir,
    regressor,
  );
});
