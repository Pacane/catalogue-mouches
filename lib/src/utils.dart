List/*=List<T>*/ partiallyFlattenList/*<T>*/(List<T> prev, dynamic element) {
  if (element is Iterable<T>) {
    prev.addAll(element);
  } else {
    prev.add(element);
  }
  return prev;
}
