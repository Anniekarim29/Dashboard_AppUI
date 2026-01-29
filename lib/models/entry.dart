enum EntryType { sale, order, expense, payment }

class Entry {
  final EntryType type;
  final double amount;
  final String description;
  final DateTime timestamp;

  Entry({
    required this.type,
    required this.amount,
    required this.description,
    required this.timestamp,
  });

  String get typeLabel {
    switch (type) {
      case EntryType.sale:
        return 'Sale';
      case EntryType.order:
        return 'Order';
      case EntryType.expense:
        return 'Expense';
      case EntryType.payment:
        return 'Payment';
    }
  }
}
