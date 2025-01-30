import 'package:flutter_test/flutter_test.dart';
import 'package:dream_path/models/user_model.dart';


void main(){
  group('UserModel Tests',(){
    test('UserModel should update profile correctly', (){
      final user = UserModel(name: 'Takatso Molekane', email: 'takatso.molekane@gmail.com');
      user.updateProfile('Jane Doe', 'janedoe@example.com');
      expect(user.name, 'Jane Doe');
      expect(user.email, 'janedoe@example.com');
    });

    test('User model should set Holland Code correctly', (){
      final user = UserModel(name: 'John Doe', email: 'johndoe@example.com');
      user.setHollandCode('RIA');
      expect(user.hollandCode, 'RIA');
    });

    test('UserModel should add saved career correctly', (){
      final user = UserModel(name: 'John Doe', email: 'johndoe@example.com');
      user.addSavedCareer('Software Engineer');
      expect(user.savedCareers, contains('Software Engineer'));
    });

  });

}