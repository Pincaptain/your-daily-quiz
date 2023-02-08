import "package:your_daily_quiz/model/question.dart";

class QuestionMother {
  static Question createSimpleQuestion() {
    return Question(
      category: "Mathematics",
      id: "7650d2e8-832f-4940-8689-d8622ab182cb",
      correctAnswer: "2",
      incorrectAnswers: ["3", "4", "123"],
      question: "What is 1 + 1?",
      tags: ["mathematics", "kids_and_adults"],
      type: "",
      difficulty: "easy",
      regions: [],
      isNiche: false,
    );
  }

  static Question createNicheQuestion() {
    return Question(
      category: "Wildlife",
      id: "280db702-13ac-4089-98ed-df918b0be007",
      correctAnswer: "Hyacinth Macaw",
      incorrectAnswers: ["Horse Sparrow", "Barn Owl", "Mallard"],
      question: "Which of these species of birds are native to the Pantanal region of Brazil?",
      tags: ["birds", "wildlife", "brazil_and_latin_america"],
      type: "",
      difficulty: "hard",
      regions: [],
      isNiche: true,
    );
  }
}
