part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initAuth();
  _initProduct();



  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;


  serviceLocator.registerLazySingleton(
    () => Hive.box(name: 'products'),
  );

  serviceLocator.registerLazySingleton(() => TokenManager());

  // External
  serviceLocator.registerLazySingleton(() => Dio());
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);

  serviceLocator.registerFactory(() => InternetConnection());

  // core
  serviceLocator.registerLazySingleton(
    () => AppUserCubit(serviceLocator<TokenManager>(), ),
  );
  serviceLocator.registerFactory<ConnectionChecker>(
    () => ConnectionCheckerImpl(
      serviceLocator(),
    ),
  );
}


void _initAuth() {
  // Datasource
  serviceLocator
    ..registerFactory<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
          dio: serviceLocator(),
          tokenManager: serviceLocator(),
      ),
    )
    // Repository
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        serviceLocator(),
        serviceLocator(),
        serviceLocator()
      ),
    )
    // Usecases

    ..registerFactory(
      () => UserLogin(
        serviceLocator(),
      ),
    )

    ..registerFactory(
      () => UserLogout(
        serviceLocator(),
      ),
    )
    ..registerFactory(
      () => CurrentUser(
        serviceLocator(),
      ),
    )
    // Bloc
    ..registerLazySingleton(
      () => AuthBloc(
        userLogin: serviceLocator(),
        currentUser: serviceLocator(),
        appUserCubit: serviceLocator(),
        userLogout:serviceLocator(),
      ),
    );
}



void _initProduct() {
  // Datasource
  serviceLocator
    ..registerFactory<ProductRemoteDataSource>(
      () => ProductRemoteDataSourceImpl(
          dio: serviceLocator(),
          tokenManager: serviceLocator(),
      ),
    )
    // Repository
    ..registerFactory<ProductRepository>(
      () => ProductRepositoryImpl(
        serviceLocator(),
        serviceLocator(),
        serviceLocator()
      ),
    )
    // Usecases

    ..registerFactory( 
      () => GetAllProducts(
        serviceLocator(),
      ),
    )

    // Bloc
    ..registerLazySingleton(
      () => ProductBloc(
        getAllProducts: serviceLocator(),
      ),
    );
}


