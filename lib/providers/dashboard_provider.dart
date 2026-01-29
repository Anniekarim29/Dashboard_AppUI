import 'package:flutter/foundation.dart';
import '../models/business_stats.dart';
import '../models/transaction.dart';
import '../models/user_profile.dart';

class DashboardProvider extends ChangeNotifier {
  // User Profile
  UserProfile _userProfile = UserProfile.annie();
  
  // Notifications
  int _notificationCount = 3;
  
  // Business Stats
  BusinessStats _stats = BusinessStats(
    availableBalance: 360,
    pendingAmount: 220,
    thisMonthEarnings: 754,
    totalEarned: 3603,
    thisMonthPercentage: 54.65,
    totalPercentage: 12.5,
    weeklyTrend: [
      DailySales(day: 'S', amount: 120),
      DailySales(day: 'M', amount: 280),
      DailySales(day: 'T', amount: 360),
      DailySales(day: 'W', amount: 180),
      DailySales(day: 'T', amount: 240),
      DailySales(day: 'F', amount: 200),
      DailySales(day: 'S', amount: 150),
    ],
    thisWeekEarnings: 360,
    thisWeekPercentage: 54.65,
  );
  
  // Transactions
  final List<Transaction> _transactions = [
    Transaction(
      id: '1',
      type: TransactionType.withdrawal,
      title: 'Cash withdraw',
      description: 'Sep 19, 2023',
      amount: -843,
      date: DateTime(2023, 9, 19),
      status: TransactionStatus.completed,
    ),
    Transaction(
      id: '2',
      type: TransactionType.withdrawal,
      title: 'Withdrawal to Paypal',
      description: 'Sep 18, 2023',
      amount: -843,
      date: DateTime(2023, 9, 18),
      status: TransactionStatus.pending,
    ),
    Transaction(
      id: '3',
      type: TransactionType.earning,
      title: 'Sales earning',
      description: 'Sep 17, 2023',
      amount: 450,
      date: DateTime(2023, 9, 17),
      status: TransactionStatus.completed,
    ),
  ];

  UserProfile get userProfile => _userProfile;
  int get notificationCount => _notificationCount;
  BusinessStats get stats => _stats;
  List<Transaction> get transactions => _transactions;
  
  List<Transaction> get earningsTransactions => 
      _transactions.where((t) => t.type == TransactionType.earning).toList();
  
  List<Transaction> get withdrawalTransactions => 
      _transactions.where((t) => t.type == TransactionType.withdrawal).toList();

  void markNotificationsRead() {
    _notificationCount = 0;
    notifyListeners();
  }
  
  void addNotification() {
    _notificationCount++;
    notifyListeners();
  }

  void withdrawFunds() {
    // Handle withdrawal logic
    notifyListeners();
  }
}
