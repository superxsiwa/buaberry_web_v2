import 'dart:convert';

class MenuM {
  int id;
  String name;
  String? imageId;
  String description;
  String price;
  MenuM({
    required this.id,
    required this.name,
    this.imageId,
    required this.description,
    required this.price,
  });

  MenuM copyWith({
    int? id,
    String? name,
    String? imageId,
    String? description,
    String? price,
  }) {
    return MenuM(
      id: id ?? this.id,
      name: name ?? this.name,
      imageId: imageId ?? this.imageId,
      description: description ?? this.description,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageId': imageId,
      'description': description,
      'price': price,
    };
  }

  factory MenuM.fromMap(Map<String, dynamic> map) {
    return MenuM(
      id: map['id'] as int,
      name: map['name'] as String,
      imageId: map['imageId'] != null ? map['imageId'] as String : null,
      description: map['description'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuM.fromJson(String source) => MenuM.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MenuM(id: $id, name: $name, imageId: $imageId, description: $description, price: $price)';
  }

  @override
  bool operator ==(covariant MenuM other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.imageId == imageId && other.description == description && other.price == price;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ imageId.hashCode ^ description.hashCode ^ price.hashCode;
  }
}
