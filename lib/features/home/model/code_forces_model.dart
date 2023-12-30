enum CodeForcesContestType { CF, IOI, ICPC }

enum CodeForcesContestPhase {
  BEFORE,
  CODING,
  PENDING_SYSTEM_TEST,
  SYSTEM_TEST,
  FINISHED
}

class CodeForcesContest {
  final int id;
  final String name;
  final CodeForcesContestType type;
  final CodeForcesContestPhase phase;
  final bool frozen;
  final int durationSeconds;
  final int? startTimeSeconds;
  final int? relativeTimeSeconds;
  final String? preparedBy;
  final String? websiteUrl;
  final String? description;
  final int? difficulty;
  final String? kind;
  final String? icpcRegion;
  final String? country;
  final String? city;
  final String? season;

  CodeForcesContest({
    required this.id,
    required this.name,
    required this.type,
    required this.phase,
    required this.frozen,
    required this.durationSeconds,
    this.startTimeSeconds,
    this.relativeTimeSeconds,
    this.preparedBy,
    this.websiteUrl,
    this.description,
    this.difficulty,
    this.kind,
    this.icpcRegion,
    this.country,
    this.city,
    this.season,
  });

  factory CodeForcesContest.fromJson(Map<String, dynamic> json) {
    return CodeForcesContest(
      id: json['id'] as int,
      name: json['name'] as String,
      type: CodeForcesContestType.values.firstWhere(
          (type) => type.toString() == 'CodeForcesContestType.${json['type']}'),
      phase: CodeForcesContestPhase.values.firstWhere((phase) =>
          phase.toString() == 'CodeForcesContestPhase.${json['phase']}'),
      frozen: json['frozen'] as bool,
      durationSeconds: json['durationSeconds'] as int,
      startTimeSeconds: json['startTimeSeconds'] as int?,
      relativeTimeSeconds: json['relativeTimeSeconds'] as int?,
      preparedBy: json['preparedBy'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      description: json['description'] as String?,
      difficulty: json['difficulty'] as int?,
      kind: json['kind'] as String?,
      icpcRegion: json['icpcRegion'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      season: json['season'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type.toString().split('.').last,
      'phase': phase.toString().split('.').last,
      'frozen': frozen,
      'durationSeconds': durationSeconds,
      'startTimeSeconds': startTimeSeconds,
      'relativeTimeSeconds': relativeTimeSeconds,
      'preparedBy': preparedBy,
      'websiteUrl': websiteUrl,
      'description': description,
      'difficulty': difficulty,
      'kind': kind,
      'icpcRegion': icpcRegion,
      'country': country,
      'city': city,
      'season': season,
    };
  }
}
