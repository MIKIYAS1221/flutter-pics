class ImagesModel {
  late int id;
  late String url;
  late String title;
  ImagesModel(
    this.id,
    this.url,
    this.title,
  );
  ImagesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    title = json['title'];
  }
}
