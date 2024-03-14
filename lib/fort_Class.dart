class FortInfo {
  final String fortImage;
  final String description;
  final double duration;

  FortInfo(
      {required this.fortImage,
      required this.description,
      required this.duration});
}

List<FortInfo> modelClass = [
  FortInfo(fortImage: "assets", description: "Hiii", duration: 6),
    FortInfo(fortImage: "assets", description: "Byee", duration: 4),
  
];
