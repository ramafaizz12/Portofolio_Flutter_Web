import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_fltter/bloc/popup/popupmenu_bloc.dart';
import 'package:responsive_fltter/pages/homepage.dart';
import 'package:responsive_fltter/shared/theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PopupmenuBloc>(
          create: (context) => PopupmenuBloc(),
        ),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.dark,
        darkTheme: Theme.of(context).copyWith(
            platform: TargetPlatform.android,
            scaffoldBackgroundColor: backgroundcolor,
            primaryColor: backgroundcolor,
            canvasColor: backgroundcolor,
            textTheme: GoogleFonts.latoTextTheme()),
        debugShowCheckedModeBanner: false,
        builder: (context, child) => ResponsiveWrapper.builder(
            ClampingScrollWrapper.builder(context, child!),
            breakpoints: const [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.resize(800, name: TABLET),
              ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              ResponsiveBreakpoint.resize(2460, name: "4K"),
            ],
            background: Container(
              color: backgroundcolor,
            ),
            defaultScale: true),
        home: const HomePage(),
      ),
    );
  }
}
