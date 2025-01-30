import 'package:flutter_test/flutter_test.dart';
import 'package:dream_path/models/question_model.dart';

void main(){
  group('QuestionModel Tests', (){
    test('QuestionModel should store question and options correctly', (){
      final question = QuestionModel(
          question: 'What do you enjoy doing in your free time?',
          options: [
            OptionModel(text: 'Fixing things', type: 'R'),
            OptionModel(text: 'Reading scientific articles', type: 'I'),
          ],
      );
      expect(question.question,'What do you enjoy in your free time?');
      expect(question.options.length, 2);
      expect(question.options[0].text,'Fixing things');
      expect(question.options[1].type, 'I');
    });
  });
}