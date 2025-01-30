import 'package:flutter_test/flutter_test.dart';
import 'package:dream_path/models/career_model.dart';

void main() {
  group('CareerModel Tests', () {
    test('CareerModel should store career details correctly', () {
      final career = CareerModel(
        title: 'Software Engineer',
        description: 'Develops software applications.',
        requiredSkills: ['Programming', 'Problem Solving'],
        salaryRange: '\$80,000 - \$120,000',
      );
      expect(career.title, 'Software Engineer');
      expect(career.description, 'Develops software applications.');
      expect(career.requiredSkills, contains('Programming'));
      expect(career.salaryRange, '\$80,000 - \$120,000');
    });
  });
}