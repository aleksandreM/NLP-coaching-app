import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/check_box_toggler_provider.dart';
import '/screens/home_page_screen.dart';
import '/global_app_colors.dart';
import '/global_app_styles.dart';
import 'routes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CheckBoxTogglerProvider(),),
        
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: GlobalAppStyles.fontFamily,
          appBarTheme: const AppBarTheme(
            backgroundColor: GlobalAppColors.mainBackgroundColor,
          ),
          scaffoldBackgroundColor: GlobalAppColors.mainBackgroundColor,
        ),
        home: const MyHomePage(),
        routes: Routes.routes,
      ),
    );
  }
}
