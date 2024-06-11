part of 'init_dependencies.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initAuth();
  _initProduct();
  _initTransaksi();


  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;


  serviceLocator.registerLazySingleton(
    () => Hive.box(name:'transaksi'),
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

void _initTransaksi(){

  serviceLocator
  ..registerFactory<TransaksiRemoteDataSource>(
    ()=> TransaksiRemoteDataSourceImpl(
        dio:serviceLocator(),
        tokenManager:serviceLocator()
    ),
  )

   ..registerFactory<TransaksiLocalDataSource>(
      () => TransaksiLocalDataSourceImpl(
        serviceLocator(),
      ),
    )
  ..registerFactory<TransaksiRepository>(
    ()=>TransaksiRepositoryImpl(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator()
    )
  )
  ..registerFactory( 
      () => GetAllTransaksi(
        serviceLocator(),
      ),
    )

    ..registerFactory( 
      () => GetAllLocalTransaksi(
        serviceLocator(),
      ),
    )
  ..registerFactory( 
      () => SaveTransaksi(
        serviceLocator(),
      ),
    )

    // Bloc
    ..registerLazySingleton(
      () => TransaksiBloc(
        getAllTransaksi: serviceLocator(),
        saveTransaksi:serviceLocator(),
        getAllLocalTransaksi: serviceLocator(),
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


