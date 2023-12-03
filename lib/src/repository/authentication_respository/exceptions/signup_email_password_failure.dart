
class SignUpWithEmailPasswordFailure {
  final String message;

  const SignUpWithEmailPasswordFailure ([this.message = "An unknown error occured"]);

  factory SignUpWithEmailPasswordFailure.code(String code){
      switch(code) {
        case 'weak-password' : 
          return const SignUpWithEmailPasswordFailure('Please enter a stronger password');
        case 'invalid-email' : 
          return const SignUpWithEmailPasswordFailure('Email is not valid or badly formatted.');
        case 'email-already-in-use' : 
          return const SignUpWithEmailPasswordFailure('An account already exist for that email.');
        case 'operation-not-allowed' : 
          return const SignUpWithEmailPasswordFailure('Operation not allowed. Please contact support.');
        case 'user-disabled' : 
          return const SignUpWithEmailPasswordFailure('this user has been disabled. Please contact support for help.');
        default : 
          return const SignUpWithEmailPasswordFailure('');
      }

  }
}