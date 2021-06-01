// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nice_counter_app/01_counter/counter.dart';
import 'package:nice_counter_app/01_counter/widgets/widgets.dart';

import 'package:nice_counter_app/l10n/l10n.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const PlasmaBackground(),
          Positioned(
            top: 48,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const AnimatedCircles(),
                const CounterValue(),
              ],
            ),
          ),
          const Positioned(bottom: 48, child: CounterSlider()),
        ],
      ),
    );
  }
}
