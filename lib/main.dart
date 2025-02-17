import 'package:egycan_app/Core/Utils/app_router.dart';
import 'package:egycan_app/Core/Utils/singleton_shared_preferences.dart';
import 'package:egycan_app/Feature/Home/Presentation/Manager/FAB%20Cart%20Cubit/fab_cart_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'firebase_options.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SingletonSharedPreferences.instance.init();
  runApp(const EgyCanApp());
}

class EgyCanApp extends StatelessWidget
{
  const EgyCanApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      designSize: Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),

      child: BlocProvider(
        create: (context) => FabCartCubit(),
        child: MaterialApp.router(
          title: 'EgyCan Arabian Market',
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme(), useMaterial3: true),
        ),
      ),
    );
  }
}