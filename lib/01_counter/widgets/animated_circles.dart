import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimatedCircles extends StatelessWidget {
  const AnimatedCircles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: FlareActor(
        'assets/flares/circle.flr',
        animation: 'Alarm',
        color: Theme.of(context).accentColor,
      ),
    );
  }
}
