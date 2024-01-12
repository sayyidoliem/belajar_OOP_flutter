void main() {
  greet("Sayyid", 2007);
  plus(2, 4);
  average(8, 8);
  print(average(4, 4));
  greetNewUser();
  try {
    print(greetNewUser());
  } on NoSuchMethodError {
    print("bakekok");
  }
}

//params in function
void greet(String name, int born) {
  var age = 2024 - born;
  print('Hello $name, today your age is $age');
}

//return in function
plus(num1, num2) {
  return (print(num1 + num2));
}

//arrow syntaks for simplify functions
double average(num num1, num num2) => (num1 + num2) / 2;

//optional params in function
greetNewUser() {
  return (Person('Kiki', 17, true));
}

Person([String? name, int? age, bool? isVerified]) {
  return Person();
}
