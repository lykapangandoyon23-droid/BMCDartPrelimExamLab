import 'dart:io';

void main() {
  const double passing = 60.0;
  const double maxScore = 100.0;

  double? assignemt, midterm, finals; // Corrected typo and made nullable

  print("Enter assignemt score: ");

  String? assignemtInput = stdin.readLineSync(); // Read input as String?
  assignemt = double.tryParse(assignemtInput ?? ''); // Safely parse, handle null


  print("Enter midterm score: ");
  String? midtermInput = stdin.readLineSync(); // Read input as String?
  midterm = double.tryParse(midtermInput ?? ''); // Safely parse, handle null


  print("Enter finals score: ");
  String? finalsInput = stdin.readLineSync(); // Read input as String?
  finals = double.tryParse(finalsInput ?? ''); // Safely parse, handle null


  if (assignemt == null || midterm == null || finals == null) {
        print("Invalid score");
        return;
  }


  double grade = (assignemt / maxScore) + (midterm / maxScore) + (finals / maxScore);

  print("Final Grade: ${grade}");

  if (grade >= passing) {
    print("Passed");
  } else {
    print("Failed");
  }
}

    
