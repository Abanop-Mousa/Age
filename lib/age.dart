class AgeCalculator {
  static int age;
  AgeCalculator(int y) {
    print("enter your birth year :");

    // var birthday = stdin.readLineSync() as int ;
    var birthday = y;

    age = DateTime.now().year - birthday;
    print("yout age is $age years old");
  }
}
