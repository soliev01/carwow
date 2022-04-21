import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(App()),
    blocObserver: SimpleBlocObserver(),
  );
}
