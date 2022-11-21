class Scholarship {
  String studyLevel;
  String specification;
  int universityIndex;
  String description;
  int startAge;
  int endAge;
  int perfectAge;
  String englishLevel;
  int startAverage;
  String academicLanguage;
  int agePercentage;
  int averagePercentage;
  int englishLevelPercentage;
  String fundation;

  Scholarship(this.studyLevel,
      this.specification,
      this.universityIndex,
      this.description,
      this.startAge,
      this.endAge,
      this.perfectAge,
      this.englishLevel,
      this.startAverage,
      this.academicLanguage,
      this.agePercentage,
      this.averagePercentage,
      this.englishLevelPercentage,
      this.fundation
      );

  factory Scholarship.fromJson(Map<String, dynamic> data) {
    return Scholarship(
        data["studyLevel"],
        data["specification"],
        data["universityIndex"],
        data["description"],
        data["startAge"],
        data["endAge"],
        data["perfectAge"],
        data["englishLevel"],
        data["startAverage"],
        data["academicLanguage"],
        data["agePercentage"],
        data["averagePercentage"],
        data["englishLevelPercentage"],
        data["fundation"]
    );
  }
}
