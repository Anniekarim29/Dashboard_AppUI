import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../widgets/dashboard_header.dart';
import '../widgets/earnings_card.dart';
import '../widgets/earnings_activity_chart.dart';
import '../widgets/withdraw_button.dart';
import '../widgets/transactions_section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.background,
              AppColors.background,
              AppColors.primaryPurple.withOpacity(0.05),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              // Header
              const SliverToBoxAdapter(
                child: DashboardHeader(),
              ),
              
              // Earnings Card
              const SliverToBoxAdapter(
                child: EarningsCard(),
              ),
              
              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),
              
              // Earnings Activity Chart
              const SliverToBoxAdapter(
                child: EarningsActivityChart(),
              ),
              
              const SliverToBoxAdapter(
                child: SizedBox(height: 8),
              ),
              
              // Withdraw Button
              const SliverToBoxAdapter(
                child: WithdrawButton(),
              ),
              
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              
              // Transactions Section
              const SliverToBoxAdapter(
                child: TransactionsSection(),
              ),
              
              // Bottom Padding
              const SliverToBoxAdapter(
                child: SizedBox(height: 40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
