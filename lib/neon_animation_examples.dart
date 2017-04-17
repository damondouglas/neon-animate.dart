library neon_animation_examples;

@HtmlImport('neon_animation_examples.html')
import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/paper_tabs.dart';
import 'package:polymer_elements/paper_tab.dart';
import 'package:polymer_elements/iron_pages.dart';

import 'basic.dart';
import 'cascaded.dart';

@PolymerRegister('neon-animation-examples')
class NeonAnimationExamples extends PolymerElement {
  NeonAnimationExamples.created() : super.created();
  @property
  int selected = 0;
  attached() {}
}
