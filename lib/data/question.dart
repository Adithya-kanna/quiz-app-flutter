import 'package:second_app/models/quiz_question.dart';

const question = [
  QuizQuestion(
    'What is the main building blocks of Flutter UIs?',
    [
      'Widget',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'How are Flutter UIs built?',
    [
      'By Combining Widget in code',
      'By Combining widget in a visual editor ',
      'By defining widget in config files',
      'By using Xcode for IOs and Andriod Studio for Andriod',
    ],
  ),
  QuizQuestion(
    'what is the purpose of a StatefulWidget?',
    [
      'Updated UI as data changes',
      'Updated data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'which Widget should you try to use more often: StatefulWidget or StatelessWidget',
    [
      'StatefulWidget',
      'StatelessWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'what happens if you change data in a StatefulWiget?',
    [
      'The UI  is not Upadated',
      'The UI is Upadated',
      'The closet StatefulWidget is Updated',
      'The nested  StatelessWidgets are Updated',
    ],
  ),
  QuizQuestion(
    'How should you updated data inside of StatefulWidget?',
    [
      'By calling SetState()',
      'By calling UpdatedData()',
      'By calling updatedUI ()',
      'By calling updatedState()',
    ],
  ),
];
