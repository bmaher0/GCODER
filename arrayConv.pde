String[] arrayConv(StringList list) {
  String[] array = new String[list.size()];
  for (int i = 0; i < list.size(); i++) {
    array[i] = list.get(i);
  }
  return array;
}

StringList listConv(String[] array) {
  StringList list = new StringList();
  for (int i = 0; i < array.length; i++) {
    list.append(array[i]);
  }
  return list;
}

