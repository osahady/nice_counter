// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:nice_counter_app/app/app.dart';
import 'package:nice_counter_app/app/app_bloc_observer.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(DevicePreview(
      enabled: true,
      builder: (context) => const App(),
    )),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
