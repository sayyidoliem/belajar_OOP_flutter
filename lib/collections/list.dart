void main() {
  print(dynamicList);
  print(menu);
  print(list2);

//add value
  dynamicList.add("Indonesia");

//add value with to index
  dynamicList.insert(0, "Aku");

//edit value with index
  dynamicList[1] = 'Anak';

//print all from list
  dynamicList.forEach((i) {
    print(i);
  });

//remove list with value
  dynamicList.remove("Dicoding");

//remove value with index
  dynamicList.removeAt(2);

//remove value with last index
  dynamicList.removeLast();

//remove value with range index
  dynamicList.removeRange(0, 1);

  dynamicList.forEach((i) {
    print(i);
  });
}

List dynamicList = [1, 'Dicoding', true];

var food = ['Sambal', 'Ayam', 'Kambing'];
var drink = ['Es', 'Kopi', 'Oat'];

//add between 2 or more list
List menu = [...food, ...drink];

//if value list with null value
List? list;
List? list2 = [0, ...?list];
