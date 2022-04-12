import 'package:json_annotation/json_annotation.dart';
part 'photo_dto.g.dart';

/// DTO for photo model
@JsonSerializable()
class PhotoDto {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

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
