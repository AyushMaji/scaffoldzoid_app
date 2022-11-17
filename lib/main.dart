import 'package:flutter/services.dart';
import 'package:scaffoldzoid_app/controller/auth/login/login_bloc.dart';
import 'package:scaffoldzoid_app/controller/auth/register/register_bloc.dart';
import 'package:scaffoldzoid_app/controller/get_product/get_product_bloc.dart';
import 'package:scaffoldzoid_app/controller/product/product_bloc.dart';
import 'package:scaffoldzoid_app/controller/user_details/user_details_bloc.dart';
import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scaffoldzoid_app/views/spalash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Kcolor.primaryColor));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<RegisterBloc>(create: (context) => RegisterBloc()),
              BlocProvider<UserDetailsBloc>(
                  create: (context) => UserDetailsBloc()),
              BlocProvider<LoginBloc>(create: (context) => LoginBloc()),
              BlocProvider<ProductBloc>(create: (context) => ProductBloc()),
              BlocProvider<GetProductBloc>(
                  create: (context) => GetProductBloc()),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Scaffoldzoid',
              theme: ThemeData(useMaterial3: true),
              home: const SpalashPage(),
            ),
          );
        });
  }
}
