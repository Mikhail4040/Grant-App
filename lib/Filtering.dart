import 'package:flutter/cupertino.dart';
import 'package:work/GlobalVariables.dart';
import 'package:work/StudentScholarshipResult.dart';

void Filtering(
    String studyLevel,
    String average,
    String day,
    String month,
    String year,
    String englishLevel,
    String academicLanguage,
    String fundation) {
  List<int> indices = [];

  List months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  int studentYear = ToInteger(year) + 1;
  int studentMonth;
  for (int i = 0; i < months.length; i++) {
    if (months[i] == month) {
      studentMonth = i + 1;
      break;
    }
  }

  int howMonths = 12 -
      studentMonth +
      (DateTime.now().month) +
      (12 * (DateTime.now().year - studentYear));
  int curAge = (howMonths / 12).toInt();

  int avg = ToInteger(average);

  int eLevel;
  if (englishLevel == "A1") {
    eLevel = 1;
  }
  if (englishLevel == "A2") {
    eLevel = 2;
  }
  if (englishLevel == "A3") {
    eLevel = 3;
  }
  if (englishLevel == "B1") {
    eLevel = 4;
  }
  if (englishLevel == "B2") {
    eLevel = 5;
  }
  if (englishLevel == "B3") {
    eLevel = 6;
  }
  if (englishLevel == "C1") {
    eLevel = 7;
  }
  if (englishLevel == "C2") {
    eLevel = 8;
  }
  if (englishLevel == "C3") {
    eLevel = 9;
  }

  for (int i = 0; i < allScholarships.length; i++) {
    bool canStudyLevel = true;
    if (allScholarships[i].studyLevel != studyLevel) {
      canStudyLevel = false;
    }

    bool canFundation = true;
    if ((fundation != "Any") && (allScholarships[i].fundation != fundation)) {
      canFundation = false;
    }

    bool canAcademicLanguage = true;
    if ((academicLanguage != "Any") &&
        (allScholarships[i].academicLanguage != academicLanguage)) {
      canAcademicLanguage = false;
    }

    bool canAvgerage = true;
    if (allScholarships[i].startAverage > avg) {
      canAvgerage = false;
    }

    bool canEnglishLevel = true;
    int requirementEnglishLevel;
    if (allScholarships[i].englishLevel == "A1") {
      requirementEnglishLevel = 1;
    }
    if (allScholarships[i].englishLevel == "A2") {
      requirementEnglishLevel = 2;
    }
    if (allScholarships[i].englishLevel == "A3") {
      requirementEnglishLevel = 3;
    }
    if (allScholarships[i].englishLevel == "B1") {
      requirementEnglishLevel = 4;
    }
    if (allScholarships[i].englishLevel == "B2") {
      requirementEnglishLevel = 5;
    }
    if (allScholarships[i].englishLevel == "B3") {
      requirementEnglishLevel = 6;
    }
    if (allScholarships[i].englishLevel == "C1") {
      requirementEnglishLevel = 7;
    }
    if (allScholarships[i].englishLevel == "C2") {
      requirementEnglishLevel = 8;
    }
    if (allScholarships[i].englishLevel == "C3") {
      requirementEnglishLevel = 9;
    }

    if (eLevel < requirementEnglishLevel) {
      canEnglishLevel = false;
    }

    bool canAge = true;
    if (!(curAge >= allScholarships[i].startAge &&
        curAge <= allScholarships[i].endAge)) {
      canAge = false;
    }

    if (canStudyLevel &&
        canFundation &&
        canAcademicLanguage &&
        canAvgerage &&
        canEnglishLevel &&
        canAge) {
      indices.add(i);
    }
  }

  results.clear();
  for (int i = 0; i < indices.length; i++) {
    int index = indices[i];
    int requirementEnglishLevel;
    if (allScholarships[index].englishLevel == "A1") {
      requirementEnglishLevel = 1;
    }
    if (allScholarships[index].englishLevel == "A2") {
      requirementEnglishLevel = 2;
    }
    if (allScholarships[index].englishLevel == "A3") {
      requirementEnglishLevel = 3;
    }
    if (allScholarships[index].englishLevel == "B1") {
      requirementEnglishLevel = 4;
    }
    if (allScholarships[index].englishLevel == "B2") {
      requirementEnglishLevel = 5;
    }
    if (allScholarships[index].englishLevel == "B3") {
      requirementEnglishLevel = 6;
    }
    if (allScholarships[index].englishLevel == "C1") {
      requirementEnglishLevel = 7;
    }
    if (allScholarships[index].englishLevel == "C2") {
      requirementEnglishLevel = 8;
    }
    if (allScholarships[index].englishLevel == "C3") {
      requirementEnglishLevel = 9;
    }

    int forEnglishLevel;
    if (eLevel == 9) {
      forEnglishLevel = 100;
    } else {
      int how = 9 - requirementEnglishLevel;
      forEnglishLevel = 10;
      forEnglishLevel +=
          (eLevel - requirementEnglishLevel) * ((90 / how).toInt());
    }

    int forAverage;
    if (avg == 100) {
      forAverage = 100;
    } else {
      forAverage = 10;
      forAverage += (90 / (100 - allScholarships[index].startAverage)).toInt() *
          (avg - allScholarships[index].startAverage);
    }

    int forAge = 100;
    int dis = (allScholarships[index].perfectAge - curAge);
    if (dis < 0) {
      dis *= -1;
    }
    forAge -= (dis) *
        (90 /
                (allScholarships[index].endAge -
                    allScholarships[index].startAge +
                    1))
            .toInt();

    int finalPercentage = 0;

    finalPercentage +=
        ((forAge * allScholarships[index].agePercentage) / 100).toInt();
    finalPercentage +=
        ((forEnglishLevel * allScholarships[index].englishLevelPercentage) /
                100)
            .toInt();
    finalPercentage +=
        ((forAverage * allScholarships[index].averagePercentage) / 100).toInt();

    if (finalPercentage == 100) {
      finalPercentage = 99;
    }

    results.add(
        new StudentScholarshipResult(allScholarships[index], finalPercentage));
  }

  for (int i = 0; i < results.length; i++) {
    for (int j = i + 1; j < results.length; j++) {
      if (results[j].percentage > results[i].percentage) {
        StudentScholarshipResult toSwap = results[i];
        results[i] = results[j];
        results[j] = toSwap;
      }
    }
  }

  print(universities.length);
}
