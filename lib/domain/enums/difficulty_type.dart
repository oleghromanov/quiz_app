enum DifficultyType {
  none,
  easy,
  medium,
  hard,
}

extension DifficultyTypeExtension on DifficultyType{
  String getName() {
    switch (this) {
      case DifficultyType.easy:
        return "Easy";
      case DifficultyType.medium:
        return "Medium";
      case DifficultyType.hard:
        return "Hard";
      case DifficultyType.none:
        return "None";
    }
  }
}