class CodeChefContest {
  final String contestCode;
  final String contestName;
  final String contestStartDate;
  final String contestEndDate;
  final String contestStartDateIso;
  final String contestEndDateIso;
  final String contestDuration;
  final int distinctUsers;

  CodeChefContest({
    required this.contestCode,
    required this.contestName,
    required this.contestStartDate,
    required this.contestEndDate,
    required this.contestStartDateIso,
    required this.contestEndDateIso,
    required this.contestDuration,
    required this.distinctUsers,
  });

  factory CodeChefContest.fromJson(Map<String, dynamic> json) {
    return CodeChefContest(
      contestCode: json['contest_code'] ?? '',
      contestName: json['contest_name'] ?? '',
      contestStartDate: json['contest_start_date'] ?? '',
      contestEndDate: json['contest_end_date'] ?? '',
      contestStartDateIso: json['contest_start_date_iso'] ?? '',
      contestEndDateIso: json['contest_end_date_iso'] ?? '',
      contestDuration: json['contest_duration'] ?? '',
      distinctUsers: json['distinct_users'] ?? 0,
    );
  }
}

class CodeChefContestsData {
  final String status;
  final String message;
  final List<CodeChefContest> presentCodeChefContests;
  final List<CodeChefContest> futureCodeChefContests;
  final List<CodeChefContest> practiceCodeChefContests;
  final List<CodeChefContest> pastCodeChefContests;
  final List<Map<String, dynamic>> banners;

  CodeChefContestsData({
    required this.status,
    required this.message,
    required this.presentCodeChefContests,
    required this.futureCodeChefContests,
    required this.practiceCodeChefContests,
    required this.pastCodeChefContests,
    required this.banners,
  });

  factory CodeChefContestsData.fromJson(Map<String, dynamic> json) {
    return CodeChefContestsData(
      status: json['status'] ?? '',
      message: json['message'] ?? '',
      presentCodeChefContests:
          (json['present_contests'] as List<dynamic>? ?? [])
              .map((contestJson) => CodeChefContest.fromJson(contestJson))
              .toList(),
      futureCodeChefContests: (json['future_contests'] as List<dynamic>? ?? [])
          .map((contestJson) => CodeChefContest.fromJson(contestJson))
          .toList(),
      practiceCodeChefContests:
          (json['practice_contests'] as List<dynamic>? ?? [])
              .map((contestJson) => CodeChefContest.fromJson(contestJson))
              .toList(),
      pastCodeChefContests: (json['past_contests'] as List<dynamic>? ?? [])
          .map((contestJson) => CodeChefContest.fromJson(contestJson))
          .toList(),
      banners: (json['banners'] as List<dynamic>? ?? [])
          .map((bannerJson) => Map<String, dynamic>.from(bannerJson))
          .toList(),
    );
  }
}
