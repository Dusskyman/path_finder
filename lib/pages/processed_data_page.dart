import 'package:flutter/material.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';
import 'package:path_finder/pages/detail_path_page.dart';
import 'package:path_finder/widgets/layot/main_layout.dart';

class ProcessedDataPage extends StatelessWidget {
  final List<ResultDto> results;
  final List<GridModel> grids;
  const ProcessedDataPage({
    required this.results,
    required this.grids,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      pageName: 'Result list screen',
      body: SingleChildScrollView(
        child: Column(
          children: resultItem(context),
        ),
      ),
    );
  }

  List<Widget> resultItem(BuildContext context) {
    return results
        .map(
          (result) => InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPathPage(
                    resultDto: result,
                    gridModel:
                        grids.firstWhere((element) => element.id == result.id),
                  ),
                ),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(),
                ),
              ),
              child: Text(result.result.path),
            ),
          ),
        )
        .toList();
  }
}
