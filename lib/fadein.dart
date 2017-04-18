library fadein;

@HtmlImport('fadein.html')
import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_button.dart';

import 'package:polymer_elements/neon_animatable_behavior.dart';
import 'package:polymer_elements/neon_animation_runner_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';

@PolymerRegister('fade-in')
class FadeOut extends PolymerElement
    with NeonAnimatableBehavior, NeonAnimationRunnerBehavior {
  DivElement square;
  FadeOut.created() : super.created();

  attached() {
    square = this.querySelector('.square');
    animationConfig = {
      'entry': [
        {'name': 'fade-in-animation', 'node': square}
      ]
    };
  }

  @reflectable
  run([_, __]) {
    playAnimation('entry', null);
  }
}
