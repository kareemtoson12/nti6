// Karim Toson || kareemtoson1@gmail.com || Fri Jul 03 2026 16:34:13

class LoginValidator {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your age';
    } else if (int.parse(value) < 0) {
      return 'Age cannot be negative';
    }
    return null;
  }
}
