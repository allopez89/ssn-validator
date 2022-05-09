// Function that validates a social security number and return "Valid" or "Invalid"
String validateSSN(String? ssn) {
  if (ssn == null || ssn.isEmpty) {
    return "SSN can't be empty";
  }
  // Check if the input is not a number or have a valid separator
  if (!RegExp(r'^[0-9-]+$').hasMatch(ssn)) {
    return "SSN contains letters or an invalid separator (-)";
  }
  if (ssn.length != 11) {
    return "Invalid";
  }
  // Check if the input has 000, 666 or 900-999 in the first three digits
  if (RegExp(r'[000]|[666]|[900-999]').hasMatch(ssn.substring(0, 2))) {
    return "Invalid";
  }
  if (ssn.substring(4, 5) == "00") {
    return "Invalid";
  }
  if (ssn.substring(7, 10) == "0000") {
    return "Invalid";
  }
  return "Valid";
}
