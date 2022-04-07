import 'package:json_annotation/json_annotation.dart';
part 'photo_dto.g.dart';

/// DTO for photo model
@JsonSerializable()
class PhotoDto {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  PhotoDto({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });
  factory PhotoDto.fromJson(Map<String, dynamic> json) =>
      _$PhotoDtoFromJson(json);

  @override
  String toString() {
    return 'PhotoDto: {\n albumId: $albumId,\n id: $id,\n title: $title,\n url: $url,\n thumbnailUrl: $thumbnailUrl,\n}';
  }

  Map<String, dynamic> toJson() => _$PhotoDtoToJson(this);
}
