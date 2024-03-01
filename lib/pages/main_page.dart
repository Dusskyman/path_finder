import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_finder/cubit/grid_processed_cubit/grid_processed_cubit.dart';
import 'package:path_finder/cubit/grid_processed_cubit/grid_processed_state.dart';
import 'package:path_finder/pages/process_page.dart';
import 'package:path_finder/widgets/dialogs/app_error_dialog.dart';
import 'package:path_finder/widgets/layot/main_layout.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController controller = TextEditingController();
  bool showLoader = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<GridProcessedCubit, GridProcessedState>(
      listener: listenState,
      child: MainLayout(
        pageName: 'Home page',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Set Valid Api Base Url in order to continue'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(),
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(Icons.compare_arrows),
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                context.read<GridProcessedCubit>().gedGrid(controller.text);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.blueAccent),
                child: const Text('Start counting process'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void listenState(BuildContext context, GridProcessedState state) {
    if (state is GridProcessedLoading) {
      showDialog(
        context: context,
        builder: (context) => const IgnorePointer(
          ignoring: true,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
      showLoader = true;
    }
    if (state is GridProcessedCompleted) {
      if (showLoader) {
        Navigator.of(context).pop();
      }
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ProcessPage(
            gridModels: state.gridModels,
          ),
        ),
      );
    }
    if (state is GridProcessedError) {
      if (showLoader) {
        Navigator.of(context).pop();
      }
      showDialog(
          context: context,
          builder: (context) => AppErrorDialog(error: state.error ?? ''));
    }
  }
}
