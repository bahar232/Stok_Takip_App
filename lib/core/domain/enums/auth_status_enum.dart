
enum AuthStatusEnum{
  loggedIn, loggedOut, invalidated,unKnown;

  bool get isInvalidated => this == invalidated;
  bool get isLoggedOut => this == loggedOut;
  bool get isLoggedIn=> this == loggedIn;

}