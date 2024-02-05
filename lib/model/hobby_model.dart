class SportModel {
  final String sportImage;
  final String sportTitle;
  final String sportDesc;

  const SportModel({
    required this.sportImage,
    required this.sportTitle,
    required this.sportDesc,
  });

  SportModel copyWith({
    String? hobbyTitle,
    String? hobbyDesc,
  }) {
    return SportModel(
        sportTitle: hobbyTitle ?? sportTitle,
        sportDesc: hobbyDesc ?? sportDesc,
        sportImage: sportImage);
  }
}
