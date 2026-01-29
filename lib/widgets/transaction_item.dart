import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';
import '../theme/app_colors.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  
  const TransactionItem({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.border,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Icon
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: _getIconBackgroundColor().withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              _getTransactionIcon(),
              color: _getIconBackgroundColor(),
              size: 22,
            ),
          ),
          const SizedBox(width: 12),
          
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      transaction.description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                    if (transaction.status == TransactionStatus.pending) ...[
                      const SizedBox(width: 8),
                      Container(
                        width: 40,
                        height: 2,
                        child: LinearProgressIndicator(
                          backgroundColor: AppColors.border,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            AppColors.warning,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          
          // Amount
          Text(
            '${transaction.amount > 0 ? '+' : ''}\$${transaction.amount.abs().toInt()}',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: transaction.amount > 0 ? AppColors.success : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  IconData _getTransactionIcon() {
    switch (transaction.type) {
      case TransactionType.withdrawal:
        return Icons.arrow_upward;
      case TransactionType.deposit:
        return Icons.arrow_downward;
      case TransactionType.earning:
        return Icons.attach_money;
      case TransactionType.refund:
        return Icons.refresh;
    }
  }

  Color _getIconBackgroundColor() {
    switch (transaction.type) {
      case TransactionType.withdrawal:
        return AppColors.error;
      case TransactionType.deposit:
        return AppColors.success;
      case TransactionType.earning:
        return AppColors.accentOrange;
      case TransactionType.refund:
        return AppColors.info;
    }
  }
}
