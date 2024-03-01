import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_finder/config/app_config.dart';
import 'package:path_finder/config/interceptors.dart';
import 'package:path_finder/cubit/grid_processed_cubit/grid_processed_cubit.dart';
import 'package:path_finder/cubit/path_finger_cubit.dart/path_finder_cubit.dart';
import 'package:path_finder/cubit/path_result_cubit/path_result_cubit.dart';
import 'package:path_finder/pages/main_page.dart';

void main() {
  Logger.init(LocalLogger());
  WidgetsFlutterBinding.ensureInitialized();
  initInterceptors();
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    //I know that bad practice of bloc, but for the small appp, it's easer to roll up whole app in bloc
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GridProcessedCubit(),
        ),
        BlocProvider(
          create: (context) => PathFinderCubit(),
        ),
        BlocProvider(
          create: (context) => PathResultCubit(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}
