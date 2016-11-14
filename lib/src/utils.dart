List/*<T>*/ partiallyFlattenList/*<T>*/(List/*<T>*/ prev, dynamic element) {
  if (element is Iterable) {
    // ignore: strong_mode_down_cast_composite
    prev.addAll(element);
  } else {
    // ignore: strong_mode_down_cast_composite
    prev.add(element);
  }
  return prev;
}
