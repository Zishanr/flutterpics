// Dart can have only one unnamed constructor

class ImageModel {
  int id;
  String url;
  String title;

  // Unnamed Constructor
  ImageModel(this.id, this.url, this.title);

  // Named Constructor
  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
}