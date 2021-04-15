class User {
  int userId;
  String fullName;
  String email;
  String phone;
  String password;
  String token;
  String renewalToken;

  User({this.userId, this.fullName, this.email, this.phone, this.password, this.token, this.renewalToken});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        fullName: responseData['fullName'],
        email: responseData['email'],
        phone: responseData['phone'],
        password: responseData['password'],
        token: responseData['access_token'],
        renewalToken: responseData['renewal_token']
    );
  }
}