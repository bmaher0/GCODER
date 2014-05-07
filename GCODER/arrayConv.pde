String[] arrayConv(StringList list) {
  String[] array = new String[list.size()];
  for (int i = 0; i < list.size(); i++) {
    array[i] = list.get(i);
  }
  return array;
}

