class AuthValidator {
  AuthValidator._();

  static void validateRegister({
    required String name,
    required String email,
    required String password,
  }) {
    validateName(name);
    validateEmail(email);
    validatePassword(password);
  }

  static void validateSignIn({
    required String email,
    required String password,
  }) {
    validateEmail(email);
    validatePassword(password);
  }

  static void validateName(String name) {
    if (name.trim().isEmpty) {
      throw const AuthValidationException(message: 'Name cannot be empty.');
    }

    if (name.trim().length < 2) {
      throw const AuthValidationException(
        message: 'Name must be at least 2 characters.',
      );
    }
  }

  static void validateEmail(String email) {
    final trimmedEmail = email.trim();

    if (trimmedEmail.isEmpty) {
      throw const AuthValidationException(message: 'Email cannot be empty.');
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(trimmedEmail)) {
      throw const AuthValidationException(
        message: 'Please enter a valid email address.',
      );
    }
  }

  static void validatePassword(String password) {
    if (password.isEmpty) {
      throw const AuthValidationException(message: 'Password cannot be empty.');
    }

    if (password.length < 6) {
      throw const AuthValidationException(
        message: 'Password must be at least 6 characters.',
      );
    }
  }
}

class AuthValidationException implements Exception {
  final String message;

  const AuthValidationException({required this.message});

  @override
  String toString() => message;
}
