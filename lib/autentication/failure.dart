class LoginWithEmailAndPasswordFailure {
  final String messages;

  const LoginWithEmailAndPasswordFailure([this.messages="An Unknown error occured. "]);
  factory LoginWithEmailAndPasswordFailure.code(String code) {
    switch(code){
      case 'ivalid-password' :
        return const LoginWithEmailAndPasswordFailure('Password is not valid. ');

      case 'invalid-email' :
        return const LoginWithEmailAndPasswordFailure('E-mail is not valid or badly formatted. ');


      default: return LoginWithEmailAndPasswordFailure();
    }
  }
}