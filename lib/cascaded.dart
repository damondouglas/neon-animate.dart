library cascaded;

@HtmlImport('cascaded.html')
import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_button.dart';

import 'package:polymer_elements/neon_animatable_behavior.dart';
import 'package:polymer_elements/neon_animation_runner_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/scale_down_animation.dart';
import 'package:polymer_elements/neon_animation/animations/cascaded_animation.dart';

@PolymerRegister('x-cascaded')
class XBasic extends PolymerElement
    with NeonAnimatableBehavior, NeonAnimationRunnerBehavior {
  XBasic.created() : super.created();
  ElementList squares;

  attached() {
    squares = this.querySelectorAll('.square');

    animationConfig = {
      'entry': [
        {
          'name': 'cascaded-animation',
          'animation': 'scale-down-animation',
          'nodes': squares,
          'nodeDelay': 250,
          'timing': 0
        }
      ]
    };
  }

  @reflectable
  run([__, _]) {
    playAnimation('entry', null);
  }
}
