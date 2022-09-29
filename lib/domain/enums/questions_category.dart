enum QuestionsCategory {
  none,
  linux,
  devOps,
  networking,
  programming,
  cloud,
  docker,
  kubernetes
}

extension QuestionsCategoryExtension on QuestionsCategory{
  String getName() {
    switch (this) {
      case QuestionsCategory.none:
        return "None";
      case QuestionsCategory.linux:
        return "Linux";
      case QuestionsCategory.devOps:
        return "DevOps";
      case QuestionsCategory.networking:
        return "Networking";
      case QuestionsCategory.programming:
        return "Programming";
      case QuestionsCategory.cloud:
        return "Cloud";
      case QuestionsCategory.docker:
        return "Docker";
      case QuestionsCategory.kubernetes:
        return "Kubernetes";}
    }
}