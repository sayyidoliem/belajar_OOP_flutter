void main() {
  print(price);

//add value
  price.add(6);

//add all value
  price.addAll({2, 5, 3});

//remove value
  price.remove(1);

//get value index
  print(price.elementAt(1));
}

//same with list, but no duplicate value
Set price = new Set.from([2, 4, 3, 4, 6, 6]);
