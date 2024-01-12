void main() {
//get value
  print(capital['Jakarta']);

//add key-value
  capital['New Delhi'] = 'India';
  print(capitalKeys);
  print(capitalValues);
}

//list with key and value
//left = key
//right = value
var capital = {
  'Jakarta': 'Indonesia',
  'London': 'England',
  'Tokyo': 'Japan',
};

//get all keys
var capitalKeys = capital.keys;

//get all value
var capitalValues = capital.values;
