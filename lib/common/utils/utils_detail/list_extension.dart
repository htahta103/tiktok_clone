extension ListExtension<T> on List<T> {
  T? firstOrDefault(bool Function(T) e) {
    T? result;
    for (final item in this) {
      if (e.call(item)) {
        result = item;
        break;
      }
    }
    return result;
  }

  List<List<T>> chunk(int chunkSize) {
    List<List<T>> chunks = [];
    int len = length;
    for (var i = 0; i < len; i += chunkSize) {
      int size = i + chunkSize;
      chunks.add(sublist(i, size > len ? len : size));
    }
    return chunks;
  }

  bool checkIndex(int index) {
    return asMap().containsKey(index);
  }
}
