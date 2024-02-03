class HobbyModel {
  final String hobbyTitle;
  final String hobbyDesc;

  const HobbyModel({
    required this.hobbyTitle,
    required this.hobbyDesc,
  });

  HobbyModel copyWith({
    String? hobbyTitle,
    String? hobbyDesc,
  }) {
    return HobbyModel(
      hobbyTitle: hobbyTitle ?? this.hobbyTitle,
      hobbyDesc: hobbyDesc ?? this.hobbyDesc,
    );
  }
}
