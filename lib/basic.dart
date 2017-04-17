library basic;

@HtmlImport('basic.html')
import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_button.dart';

import 'package:polymer_elements/neon_animatable_behavior.dart';
import 'package:polymer_elements/neon_animation_runner_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/transform_animation.dart';
import 'package:polymer_elements/neon_animation/animations/scale_down_animation.dart';
import 'package:polymer_elements/neon_animation/animations/slide_down_animation.dart';

@PolymerRegister('x-basic')
class XBasic extends PolymerElement
    with NeonAnimatableBehavior, NeonAnimationRunnerBehavior {
  XBasic.created() : super.created();
  DivElement square;

  attached() {
    square = this.querySelector('.square');
    animationConfig = {
      'entry': [
        {'name': 'scale-down-animation', 'node': square}
      ]
    };
  }

  @reflectable
  run([__, _]) {
    playAnimation('entry', null);
  }
}
