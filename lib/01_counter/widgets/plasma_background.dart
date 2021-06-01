import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import 'package:nice_counter_app/core/themes/app_theme.dart';

class PlasmaBackground extends StatelessWidget {
  const PlasmaBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        backgroundBlendMode: BlendMode.srcOver,
      ),
      child: PlasmaRenderer(
        type: PlasmaType.infinity,
        particles: 7,
        color: Theme.of(context).particalesColor,
        blur: 0.51,
        size: 0.39,
        speed: 0.39,
        offset: 0,
        blendMode: BlendMode.plus,
        particleType: ParticleType.atlas,
        variation1: 0,
        variation2: 0,
        variation3: 0,
        rotation: 0,
      ),
    );
  }
}
