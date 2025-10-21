// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SalePointM {
  int id;
  String name;
  String? imageId;
  String? mapUrl;
  String description;
  SalePointM({
    required this.id,
    required this.name,
    this.imageId,
    this.mapUrl,
    required this.description,
  });

  SalePointM copyWith({
    int? id,
    String? name,
    String? imageId,
    String? mapUrl,
    String? description,
  }) {
    return SalePointM(
      id: id ?? this.id,
      name: name ?? this.name,
      imageId: imageId ?? this.imageId,
      mapUrl: mapUrl ?? this.mapUrl,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageId': imageId,
      'mapUrl': mapUrl,
      'description': description,
    };
  }

  factory SalePointM.fromMap(Map<String, dynamic> map) {
    return SalePointM(
      id: map['id'] as int,
      name: map['name'] as String,
      imageId: map['imageId'] != null ? map['imageId'] as String : null,
      mapUrl: map['mapUrl'] != null ? map['mapUrl'] as String : null,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SalePointM.fromJson(String source) => SalePointM.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SalePointM(id: $id, name: $name, imageId: $imageId, mapUrl: $mapUrl, description: $description)';
  }

  @override
  bool operator ==(covariant SalePointM other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.imageId == imageId && other.mapUrl == mapUrl && other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ imageId.hashCode ^ mapUrl.hashCode ^ description.hashCode;
  }
}
