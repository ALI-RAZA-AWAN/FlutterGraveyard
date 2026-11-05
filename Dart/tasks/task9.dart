class EmailAddress {
  String email;

  EmailAddress(this.email) {
    if (email.isEmpty || !email.contains('@')) {
      throw FormatException("Invalid email");
    }
  }
}

void main() {
  try {
    EmailAddress e1 = EmailAddress("student@gmail.com");
    print(e1.email);

    EmailAddress e2 = EmailAddress("");
    print(e2.email);
  } catch (e) {
    print(e);
  }
}