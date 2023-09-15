import 'package:app/app/models/app_config.dart';
import 'package:app/app/bloc/bloc_provider.dart';
import 'package:rxdart/subjects.dart';

class AppBloc extends Bloc {
  final _configStream = BehaviorSubject<AppConfig>();
  AppConfig get config => _configStream.value;
  set config(AppConfig c) => _configStream.sink.add(c);
  Stream<AppConfig> get configStream => _configStream.stream;

  @override
  void dispose() {
    _configStream.close();
  }
}
