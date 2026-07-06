import 'package:crypnote/repositories/crypnote_repository.dart';
import 'package:crypnote/core/usesCase/date_and_time_use_case.dart';
import 'package:crypnote/features/crypnote/domain/models/nearest_encryptbox_model.dart';
import '../repositories/encryptbox_repository.dart';
import '../repositories/user_repository.dart';
import '../services/encryptor_service.dart';
import '../services/hive_box_service.dart';
import '../services/local_file_service.dart';
import '../services/sqflite_service.dart';
import '../features/crypnote/domain/models/cipher_model.dart';
import '../services/preferences.dart';
import '../services/secure_storage.dart';
import '../features/authentication/domain/models/auth_model.dart';
import '../features/dashboard/domain/models/dashboard_model.dart';
import '../features/crypnote/domain/models/decryption_model.dart';
import '../features/crypnote/domain/models/encryptbox_collection_model.dart';
import '../features/crypnote/domain/models/encryption_model.dart';
import 'usesCase/language_model.dart';
import '../features/authentication/domain/models/login_model.dart';
import '../features/authentication/domain/models/register_model.dart';
import 'usesCase/theme_model.dart';
import '../features/authentication/domain/models/user_model.dart';
import 'usesCase/validator_use_case.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

final locator = GetIt.instance;

Future<void> initializeServices() async {
  await Hive.initFlutter();

  locator.registerSingleton(FlutterSecureStorage());
  locator.registerSingleton(SqfliteService());
  locator.registerSingleton(SecureStorage());
  locator.registerLazySingleton(() => LocalFileService());
  locator.registerLazySingleton(() => EncryptorService());
  locator.registerLazySingleton(() => HiveBoxService());
  locator.registerLazySingleton(() => Preferences());
  locator.registerLazySingleton(() => CrypnoteRepository());
  locator.registerLazySingleton(() => EncryptBoxRepository());
  locator.registerLazySingleton(() => UserRepository());
  locator.registerLazySingleton(() => SecretKeyHelper());
  locator.registerLazySingleton(() => ValidatorUseCase());
  locator.registerLazySingleton(() => LanguageModel());
  locator.registerLazySingleton(() => AuthModel());
  locator.registerLazySingleton(() => UserModel());
  locator.registerLazySingleton(() => LoginModel());
  locator.registerLazySingleton(() => RegisterModel());
  locator.registerLazySingleton(() => DashboardModel());
  locator.registerLazySingleton(() => EncryptBoxCollectionModel());
  locator.registerLazySingleton(() => EncryptionModel());
  locator.registerLazySingleton(() => CipherModel());
  locator.registerLazySingleton(() => ThemeModel());
  locator.registerLazySingleton(() => DecryptionModel());
  locator.registerLazySingleton(() => DateAndTimeUseCase());
  locator.registerLazySingleton(() => NearestEncryptBoxModel());
  // locator.registerLazySingleton(() => MockEncryptbox());
}
