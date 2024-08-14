import 'package:flutter_test/flutter_test.dart';

import 'package:validtion_example/validtion_example.dart';

void main() {
  group('Validation function test', (){

    test("Validation required function test", (){
      expect(requiredValidation(value: "example"), null);
    });

    test("Validation email function test", (){
      expect(emailValidation(value: 'example@gmail.com'), null);
    });

    test("Validation password function test", (){
      expect(passwordValidation(value: "Qwert123"), null);
    });
  });
}
