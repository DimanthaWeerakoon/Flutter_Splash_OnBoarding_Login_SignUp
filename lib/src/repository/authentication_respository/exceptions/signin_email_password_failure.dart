
class SignInWithEmailPasswordFailure {
  final String message;

  const SignInWithEmailPasswordFailure ([this.message = "An unknown error occured"]);

  factory SignInWithEmailPasswordFailure.code(String code){
      switch(code) {
        case 'worng-password' : 
          return const SignInWithEmailPasswordFailure('Incorrect password');
        case 'invalid-email' : 
          return const SignInWithEmailPasswordFailure('Email is not valid or badly formatted.');
        case 'user-disabled' : 
          return const SignInWithEmailPasswordFailure('This user has been disabled. Please contact support for help.');
        default : 
          return const SignInWithEmailPasswordFailure('');
      }

  }
}