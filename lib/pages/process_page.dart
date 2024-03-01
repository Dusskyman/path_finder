import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_finder/cubit/path_finger_cubit.dart/path_finder_cubit.dart';
import 'package:path_finder/cubit/path_finger_cubit.dart/path_finger_state.dart';
import 'package:path_finder/cubit/path_result_cubit/path_result_cubit.dart';
import 'package:path_finder/cubit/path_result_cubit/path_result_state.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';
import 'package:path_finder/pages/processed_data_page.dart';
import 'package:path_finder/widgets/dialogs/app_error_dialog.dart';
import 'package:path_finder/widgets/layot/main_layout.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProcessPage extends StatefulWidget {
  final List<GridModel> gridModels;
  const ProcessPage({
    required this.gridModels,
    super.key,
  });

  @override
  State<ProcessPage> createState() => _ProcessPageState();
}

class _ProcessPageState extends State<ProcessPage> {
  bool showLoader = false;

  @override
  void initState() {
    super.initState();
    context.read<PathFinderCubit>().findPath(widget.gridModels);
  }

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      pageName: 'Process Page',
      backgroundColor: Colors.white,
      body: BlocBuilder<PathFinderCubit, PathFinderState>(
        builder: (context, finderState) {
          return BlocListener<PathResultCubit, PathResultState>(
            listener: (context, state) => listenState(
              context,
              state,
              finderState is PathFinderCompleted ? finderState.results : [],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  showTitle(finderState),
                  const SizedBox(height: 16.0),
                  CircularPercentIndicator(
                    animation: true,
                    animateFromLastPercent: true,
                    animationDuration: 300,
                    percent: showProgress(finderState),
                    lineWidth: 16,
                    header: Text(
                      '${(showProgress(finderState) * 100).toInt()}%',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    center: Text(
                      showIterations(finderState),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    radius: MediaQuery.of(context).size.width * 0.2,
                  ),
                  const Spacer(),
                  IgnorePointer(
                    ignoring: finderState is! PathFinderCompleted,
                    child: TextButton(
                      onPressed: () {
                        if (finderState is PathFinderCompleted) {
                          context
                              .read<PathResultCubit>()
                              .sendResult(finderState.results);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: Colors.blueAccent),
                        child: const Text('Send results to server'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget showTitle(PathFinderState state) {
    if (state is PathFinderCompleted) {
      return const Text(
        'All date processed, you can send it for validation',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      );
    }
    return const Text(
      'Please, stand by, until your data processed',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
    );
  }

  double showProgress(PathFinderState state) {
    if (state is PathFinderLoading) {
      return state.progress;
    }
    if (state is PathFinderCompleted) {
      return 1;
    }
    return 0;
  }

  String showIterations(PathFinderState state) {
    if (state is PathFinderLoading) {
      return '${state.iterations}/${widget.gridModels.length}';
    }
    if (state is PathFinderCompleted) {
      return '${widget.gridModels.length}/${widget.gridModels.length}';
    }
    return '';
  }

  void listenState(
    BuildContext context,
    PathResultState state,
    List<ResultDto> results,
  ) {
    if (state is PathResultLoading) {
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
    if (state is PathResultCompleted) {
      if (showLoader) {
        Navigator.of(context).pop();
      }
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ProcessedDataPage(
            grids: widget.gridModels,
            results: results,
          ),
        ),
      );
    }
    if (state is PathResultError) {
      if (showLoader) {
        Navigator.of(context).pop();
      }
      showDialog(
          context: context,
          builder: (context) => AppErrorDialog(error: state.error ?? ''));
    }
  }
}
