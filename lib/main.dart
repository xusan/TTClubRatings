import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tt_club_ratings/pages/landing/landing_page.dart';
import 'package:tt_club_ratings/Services/Db/tournaments_db_service.dart';

void main() 
{
  initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TT Club Rating',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LandingPage(),
    );
  }
}

 /// Is a smart move to make your Services intiialize before you run the Flutter app.
  /// as you can control the execution flow (maybe you need to load some Theme configuration,
  /// apiKey, language defined by the User... so load SettingService before running ApiService.
  /// so GetMaterialApp() doesnt have to rebuild, and takes the values directly.
  void initServices() {
    Get.lazyPut(() => TournamentsDbService()..init());
  }
