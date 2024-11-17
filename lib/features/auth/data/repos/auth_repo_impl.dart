import 'package:church_mobile/core/services/firebase_auth_service.dart';
import 'package:church_mobile/core/services/firestore_service.dart';

class AuthRepoImpl {
  final FirebaseAuthService firebaseAuthService;
  final FirestoreService firestoreService;

  AuthRepoImpl(
      {required this.firebaseAuthService, required this.firestoreService});
}
