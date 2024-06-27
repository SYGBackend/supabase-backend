import 'dart:convert';

class Roles {
  const Roles({
    this.role,
    required this.id,
  });

  factory Roles.fromMap(Map<String, dynamic> map) {
    return Roles(
      role: map['role'],
      id: map['id'],
    );
  }

  factory Roles.fromJson(String source) => Roles.fromMap(json.decode(source));

  final String? role;

  final String id;

  Roles copyWith({
    String? role,
    String? id,
  }) {
    return Roles(
      role: role ?? this.role,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'role': role,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Roles && other.role == role && other.id == id;
  }

  @override
  int get hashCode {
    return role.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Roles(role: $role, id: $id)';
  }
}
