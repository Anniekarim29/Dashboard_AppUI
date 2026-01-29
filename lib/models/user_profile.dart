class UserProfile {
  final String name;
  final String role;
  final String avatarUrl;
  final String email;
  final String phoneNumber;

  UserProfile({
    required this.name,
    required this.role,
    this.avatarUrl = '',
    required this.email,
    required this.phoneNumber,
  });

  // For Annie
  factory UserProfile.annie() {
    return UserProfile(
      name: 'Annie',
      role: 'Dashboard',
      avatarUrl: '', // Will use initials
      email: 'annie@example.com',
      phoneNumber: '+1 234 567 8900',
    );
  }
}
