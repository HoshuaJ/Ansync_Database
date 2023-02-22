import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AnsyncLabsDatabaseVersion1FirebaseUser {
  AnsyncLabsDatabaseVersion1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AnsyncLabsDatabaseVersion1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AnsyncLabsDatabaseVersion1FirebaseUser>
    ansyncLabsDatabaseVersion1FirebaseUserStream() => FirebaseAuth.instance
            .authStateChanges()
            .debounce((user) => user == null && !loggedIn
                ? TimerStream(true, const Duration(seconds: 1))
                : Stream.value(user))
            .map<AnsyncLabsDatabaseVersion1FirebaseUser>(
          (user) {
            currentUser = AnsyncLabsDatabaseVersion1FirebaseUser(user);
            return currentUser!;
          },
        );
