class BusinessStats {
  final double availableBalance;
  final double pendingAmount;
  final double thisMonthEarnings;
  final double totalEarned;
  final double thisMonthPercentage;
  final double totalPercentage;
  final List<DailySales> weeklyTrend;
  final double thisWeekEarnings;
  final double thisWeekPercentage;

  BusinessStats({
    required this.availableBalance,
    required this.pendingAmount,
    required this.thisMonthEarnings,
    required this.totalEarned,
    required this.thisMonthPercentage,
    required this.totalPercentage,
    required this.weeklyTrend,
    required this.thisWeekEarnings,
    required this.thisWeekPercentage,
  });

  BusinessStats copyWith({
    double? availableBalance,
    double? pendingAmount,
    double? thisMonthEarnings,
    double? totalEarned,
    double? thisMonthPercentage,
    double? totalPercentage,
    List<DailySales>? weeklyTrend,
    double? thisWeekEarnings,
    double? thisWeekPercentage,
  }) {
    return BusinessStats(
      availableBalance: availableBalance ?? this.availableBalance,
      pendingAmount: pendingAmount ?? this.pendingAmount,
      thisMonthEarnings: thisMonthEarnings ?? this.thisMonthEarnings,
      totalEarned: totalEarned ?? this.totalEarned,
      thisMonthPercentage: thisMonthPercentage ?? this.thisMonthPercentage,
      totalPercentage: totalPercentage ?? this.totalPercentage,
      weeklyTrend: weeklyTrend ?? this.weeklyTrend,
      thisWeekEarnings: thisWeekEarnings ?? this.thisWeekEarnings,
      thisWeekPercentage: thisWeekPercentage ?? this.thisWeekPercentage,
    );
  }
}

class DailySales {
  final String day;
  final double amount;

  DailySales({required this.day, required this.amount});
}
