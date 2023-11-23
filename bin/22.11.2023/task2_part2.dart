Future<Set<int>> listToSet(List<int> list) async {
  Set<int> set = {};
  for (var i in list) {
    set.add(i * 2);
  }
  list.map((e) => set.add(e * 2));
  return set;
}

Iterable<List<int>> setToList(Set<int> set) sync* {
  set.map((e) => e * e);
  yield set.toList();
}

List<int> getSquareElements(List<int> list) {
  List<int> nextList = [];
  for (int i = 0; i < list.length; i++) {
    nextList.addAll([i, i * i]);
  }
  return nextList;
}

void main() {
  List<int> list = [1, 2, 3, 4, 5];
  Set<int> setNumbers;
  final set = Future(() => listToSet(list).then((value) {
        print(value);
        setNumbers = value;
        print(setToList(setNumbers));
      }));
}
