@HtmlImport('my_element.html')
library my_element;

import 'dart:html';
import 'package:web_components/web_components.dart' show HtmlImport;
import 'package:polymer/polymer.dart';
import 'package:neon_animation_examples/neon_animation_examples.dart';

@PolymerRegister('my-element')
class MyElement extends PolymerElement {
  MyElement.created() : super.created();
  ready() {}
}
