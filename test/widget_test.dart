const List items =  ["tava", "ayçiçek yağı", "patates", "tuz", "yoğurt"];
void main() {
  final List newItems = items.where((element) => element.toString().contains("a")).toList();
}
