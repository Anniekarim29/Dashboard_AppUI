class Transaction {
  final String id;
  final TransactionType type;
  final String title;
  final String description;
  final double amount;
  final DateTime date;
  final TransactionStatus status;

  Transaction({
    required this.id,
    required this.type,
    required this.title,
    required this.description,
    required this.amount,
    required this.date,
    this.status = TransactionStatus.completed,
  });
}

enum TransactionType {
  withdrawal,
  deposit,
  earning,
  refund,
}

enum TransactionStatus {
  pending,
  completed,
  failed,
}

// Helper extension for display
extension TransactionTypeExtension on TransactionType {
  String get displayName {
    switch (this) {
      case TransactionType.withdrawal:
        return 'Withdrawal';
      case TransactionType.deposit:
        return 'Deposit';
      case TransactionType.earning:
        return 'Earning';
      case TransactionType.refund:
        return 'Refund';
    }
  }
}
