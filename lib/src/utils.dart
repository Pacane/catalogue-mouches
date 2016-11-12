import 'package:flutter/widgets.dart';

List<Widget> partiallyFlattenList(List<Widget> prev, dynamic element) {
  if (element is Iterable) {
    prev.addAll(element as Iterable<Widget>);
  } else {
    prev.add(element as Widget);
  }
  return prev;
}
