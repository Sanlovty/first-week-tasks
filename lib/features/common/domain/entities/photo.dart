/// Photo entity
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  @override
  String toString() {
    return 'Photo: {\n albumId: $albumId,\n id: $id,\n title: $title,\n url: $url,\n thumbnailUrl: $thumbnailUrl,\n}';
  }
}
