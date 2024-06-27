import 'dart:convert';

class Treatment {
  const Treatment({
    this.treatmentType,
    this.reportPath,
    required this.createdAt,
    this.randevuId,
    required this.id,
  });

  factory Treatment.fromMap(Map<String, dynamic> map) {
    return Treatment(
      treatmentType: map['treatmentType'],
      reportPath: map['reportPath'],
      createdAt: DateTime.parse(map['created_at']),
      randevuId: map['randevuId'],
      id: map['id'],
    );
  }

  factory Treatment.fromJson(String source) => Treatment.fromMap(json.decode(source));

  final String? treatmentType;

  final String? reportPath;

  final DateTime createdAt;

  final String? randevuId;

  final String id;

  Treatment copyWith({
    String? treatmentType,
    String? reportPath,
    DateTime? createdAt,
    String? randevuId,
    String? id,
  }) {
    return Treatment(
      treatmentType: treatmentType ?? this.treatmentType,
      reportPath: reportPath ?? this.reportPath,
      createdAt: createdAt ?? this.createdAt,
      randevuId: randevuId ?? this.randevuId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'treatmentType': treatmentType,
      'reportPath': reportPath,
      'created_at': createdAt.toIso8601String(),
      'randevuId': randevuId,
      'id': id,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Treatment &&
        other.treatmentType == treatmentType &&
        other.reportPath == reportPath &&
        other.createdAt == createdAt &&
        other.randevuId == randevuId &&
        other.id == id;
  }

  @override
  int get hashCode {
    return treatmentType.hashCode ^ reportPath.hashCode ^ createdAt.hashCode ^ randevuId.hashCode ^ id.hashCode;
  }

  @override
  String toString() {
    return 'Treatment(treatmentType: $treatmentType, reportPath: $reportPath, createdAt: $createdAt, randevuId: $randevuId, id: $id)';
  }
}
