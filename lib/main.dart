import 'package:scaffoldzoid_app/utils/barrel.dart';
import 'package:scaffoldzoid_app/views/register/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Scaffoldzoid',
            theme: ThemeData(useMaterial3: true),
            home: const RegisterPage(),
          );
        });
  }
}
