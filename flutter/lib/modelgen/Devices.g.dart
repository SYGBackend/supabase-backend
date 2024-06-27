import 'dart:convert';

class Devices {
  const Devices({
    required this.id,
    this.name,
    required this.createdAt,
  });

  factory Devices.fromMap(Map<String, dynamic> map) {
    return Devices(
      id: map['id'],
      name: map['name'],
      createdAt: DateTime.parse(map['created_at']),
    );
  }

  factory Devices.fromJson(String source) => Devices.fromMap(json.decode(source));

  final String id;

  final String? name;

  final DateTime createdAt;

  Devices copyWith({
    String? id,
    String? name,
    DateTime? createdAt,
  }) {
    return Devices(
      id: id ?? this.id,
      name: name ?? this.name,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'created_at': createdAt.toIso8601String(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Devices && other.id == id && other.name == name && other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ createdAt.hashCode;
  }

  @override
  String toString() {
    return 'Devices(id: $id, name: $name, createdAt: $createdAt)';
  }
}
