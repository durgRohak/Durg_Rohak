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
  FortInfo(
      fortImage: "assets/fort/Vasota.jpg", description: "Hiii", duration: 6),
  FortInfo(
      fortImage: "assets/fort/Torna.jpg", description: "Byee", duration: 4),
];
