class User {
  final String name;
  User({required this.name});
}

class AuthController {
  User? currentUser;

  AuthController() {
    // Fake logged-in user for now
    currentUser = User(name: "Worker");
  }

  void login(String name) {
    currentUser = User(name: name);
  }

  void logout() {
    currentUser = null;
  }
}
