import 'dart:convert';

class Hospital {
  const Hospital({
    this.hospitalType,
    required this.id,
  });

  factory Hospital.fromMap(Map<String, dynamic> map) {
    return Hospital(
      hospitalType: map['hospital_type'],
      id: map['id'],
    );
  }

  factory Hospital.fromJson(String source) => Hospital.fromMap(json.decode(source));

  final String? hospitalType;

  final String id;

  Hospital copyWith({
    String? hospitalType,
    String? id,
  }) {
    return Hospital(
      hospitalType: hospitalType ?? this.hospitalType,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'hospital_type': hospitalType,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Hospital && other.hospitalType == hospitalType && other.id == id;
  }

  @override
  int get hashCode {
    return hospitalType.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Hospital(hospitalType: $hospitalType, id: $id)';
  }
}
