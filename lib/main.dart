import 'package:device_preview/device_preview.dart';
import 'package:e_o_e/network/online/dio_helper.dart';
import 'package:e_o_e/screens/BoardingScreens/light_theme/first_screen_board.dart';
import 'package:e_o_e/screens/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get.dart';

import 'network/local/cache.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await Cache.init();
  bool? token = Cache.getCache(key: 'token');
  if (kDebugMode) {
    print(token);
  }
  runApp(
    MyApp(
      token: token,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.token}) : super(key: key);
  final bool? token;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'EOE',
      home: SplashScreen(
        token: token,
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key,required this.token }) : super(key: key);
  final bool? token;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1, milliseconds: 500),
    ).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>widget.token == false ?  HomePage() : HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/splash screen.png"),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstBoardingScreen(),
    );
  }
}
