import 'package:church_mobile/core/services/firebase_auth_service.dart';
import 'package:church_mobile/core/services/firestore_service.dart';
import 'package:church_mobile/features/auth/data/repos/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<FirestoreService>(FirestoreService());

  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(
    firebaseAuthService: getIt<FirebaseAuthService>(),
    firestoreService: getIt<FirestoreService>(),
  ));
}
