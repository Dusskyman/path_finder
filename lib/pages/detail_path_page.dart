import 'package:flutter/material.dart';
import 'package:path_finder/app_conts.dart';
import 'package:path_finder/models/grid_model/grid_model.dart';
import 'package:path_finder/models/result_dto/result_dto.dart';
import 'package:path_finder/widgets/layot/main_layout.dart';

class DetailPathPage extends StatefulWidget {
  final GridModel gridModel;
  final ResultDto resultDto;
  const DetailPathPage({
    required this.resultDto,
    required this.gridModel,
    super.key,
  });

  @override
  State<DetailPathPage> createState() => _DetailPathPageState();
}

class _DetailPathPageState extends State<DetailPathPage> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      pageName: 'Preview screen',
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          customGridBuilder(
            widget.gridModel,
            widget.resultDto,
          ),
          const SizedBox(height: 16.0),
          Text(
            widget.resultDto.result.path,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Widget customGridBuilder(
    GridModel model,
    ResultDto resultDto,
  ) {
    int x = -1;
    int y = -1;
    return Column(
      children: model.proccedField.map(
        (e) {
          y++;
          x = -1;
          return Row(
            children: e.map(
              (e) {
                x++;
                return customCellBuilder(
                    startPoint: model.formatedStartPoint,
                    endPoint: model.formatedEndPoint,
                    data: e,
                    text: '($x, $y)');
              },
            ).toList(),
          );
        },
      ).toList(),
    );
  }

  Widget customCellBuilder({
    required String startPoint,
    required String endPoint,
    required String data,
    required String text,
  }) {
    if (data == "X") {
      return Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: AppConsts.fieldBlockedColor,
            ),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      );
    }
    if (text == startPoint) {
      return Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: AppConsts.fieldStartColor,
            ),
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      );
    }
    if (text == endPoint) {
      return Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: AppConsts.fieldEndColor,
            ),
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      );
    }
    if (text == endPoint) {
      return Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: AppConsts.fieldEndColor,
            ),
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      );
    }
    if (widget.resultDto.result.path.contains(text)) {
      return Expanded(
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(),
              color: AppConsts.fieldPathColor,
            ),
            child: Center(
              child: Text(text),
            ),
          ),
        ),
      );
    }
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1 / 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(),
            color: AppConsts.fieldEmptyColor,
          ),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
