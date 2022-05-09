import 'package:ssn_validator/ssn_validator.dart' as ssn_validator;
import 'dart:io';

void main(List<String> arguments) {
  String option = 'y';
  while (option == 'y') {
    print('Please enter a social security number: ');
    String? ssn = stdin.readLineSync();
    print(ssn_validator.validateSSN(ssn));
    print('Do you want to continue? (y/n)');
    option = stdin.readLineSync()!;
  }
}
