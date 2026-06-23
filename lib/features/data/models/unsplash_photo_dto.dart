class UnsplashPhotoDto {
  final String id;
  final String color;
  final String imageUrl;
  final String thumbUrl;
  final String photographerName;

  UnsplashPhotoDto({
    required this.id,
    required this.color,
    required this.imageUrl,
    required this.thumbUrl,
    required this.photographerName,
  });

  factory UnsplashPhotoDto.fromJson(Map<String, dynamic> json) {
    try {
      final urls = json['urls'] as Map<String, dynamic>;
      final user = json['user'] as Map<String, dynamic>;
      return UnsplashPhotoDto(
        id: json['id'] as String,
        color: json['color'] as String,
        imageUrl: urls['regular'] as String,
        thumbUrl: urls['thumb'] as String,
        photographerName: user['name'] as String,
      );
    } catch (e) {
      throw FormatException('(Invalid JSON) - [$e]');
    }
  }
}
