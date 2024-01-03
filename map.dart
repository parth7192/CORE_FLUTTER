void main() {
  List<Map<String, dynamic>> allData = [
    {
      'id': 1,
      'name': 'amar',
    },
    {
      'id': 2,
      'name': 'akbar',
    },
    {
      'id': 3,
      'name': 'anthony',
    },
  ];

  allData.forEach((element) {
    print("Data: ${allData.indexOf(element) + 1}/${allData.length}");
    element.forEach((key, value) {
      print("$key\t: $value");
    });
  });
}
