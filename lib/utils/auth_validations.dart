import 'package:techgen/screens/auth/auth_exceptions.dart';

bool registrationValidation({
  required String firstName,
  required String lastName,
  required String emailID,
  required String password,
  required String confirmPassword,
  required String college,
  required String course,
  required String phoneNumber,
}) {
  if (firstName.isEmpty ||
      lastName.isEmpty ||
      emailID.isEmpty ||
      password.isEmpty ||
      confirmPassword.isEmpty ||
      college.isEmpty ||
      course.isEmpty ||
      phoneNumber == '+91' ||
      phoneNumber.isEmpty) {
    throw EmptyRegistrationFieldException();
  }
  if (_emailValidation(emailID) == false) throw EmailErrorException();
  if (_passwordValidation(
        password,
        confirmPassword,
      ) ==
      false) throw PasswordErrorException();

  if (_phoneValidation(phoneNumber) == false) throw PhoneNumberErrorException();
  return true;
}

bool _phoneValidation(phoneNumber) {
  final phoneNumberRegExp = RegExp(r'^\+[1-9]\d{1,2}[ ]?\d{9}$');
  return phoneNumberRegExp.hasMatch(phoneNumber);
}

bool _passwordValidation(password, confirmPassword) {
  final passwordRegExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  return passwordRegExp.hasMatch(password) && password == confirmPassword;
}

bool _emailValidation(emailID) {
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  return emailRegExp.hasMatch(emailID);
}
