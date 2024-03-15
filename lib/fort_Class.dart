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
      fortImage: "assets/fort/Vasota.jpg", description: "Vasota", duration: 6),
  FortInfo(
      fortImage: "assets/fort/Torna.jpg", description: "Torna", duration: 4),
  FortInfo(
      fortImage: "assets/fort/Rajgad_Fort.jpg",
      description: "Rajgad",
      duration: 4),
  FortInfo(
      fortImage: "assets/fort/devkunda.jpg",
      description: "devkunda",
      duration: 4),
  FortInfo(
      fortImage: "assets/fort/Harihar.jpg",
      description: "Harihar",
      duration: 4),
  FortInfo(
      fortImage: "assets/fort/Torna.jpg", description: "Torna", duration: 4),
  FortInfo(
      fortImage: "assets/fort/Vasota.jpg", description: "Vasota", duration: 4),
  FortInfo(
      fortImage: "assets/fort/ratangad.jpg",
      description: "Ratangad",
      duration: 4),
];
