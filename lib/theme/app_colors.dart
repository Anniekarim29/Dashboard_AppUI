import 'package:flutter/material.dart';

class AppColors {
  // Background Colors
  static const Color background = Color(0xFF0A0A0A);
  static const Color cardBackground = Color(0xFF1A1A1A);
  static const Color surfaceLight = Color(0xFF252525);
  
  // Primary Colors - Purple/Blue Gradient
  static const Color primaryPurple = Color(0xFF8B7EFF);
  static const Color primaryBlue = Color(0xFF6B94FF);
  static const Color accentOrange = Color(0xFFFF9E55);
  
  // Gradients
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [primaryPurple, primaryBlue],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  static const LinearGradient cardGradient = LinearGradient(
    colors: [Color(0xFF1A1A1A), Color(0xFF252525)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  
  // Status Colors
  static const Color success = Color(0xFF34D399);
  static const Color warning = Color(0xFFFBBF24);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF60A5FA);
  
  // Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0B0);
  static const Color textTertiary = Color(0xFF6B6B6B);
  
  // Chart Colors
  static const Color chartBar1 = Color(0xFF8B7EFF);
  static const Color chartBar2 = Color(0xFFFF9E55);
  static const Color chartBackground = Color(0x0AFFFFFF);
  
  // Badge & Notification
  static const Color notificationBadge = Color(0xFFFF4444);
  
  // Border & Divider
  static const Color border = Color(0xFF2A2A2A);
  static const Color divider = Color(0xFF1F1F1F);
}
