import 'package:flutter/material.dart';
import 'package:path_finder/app_conts.dart';
import 'package:path_finder/models/field_model.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late final FieldModel fieldModel = const FieldModel(
    id: '',
    field: [
      "XXX.",
      "X..X",
      "X..X",
      ".XXX",
    ],
    start: {'x': 0, 'y': 3},
    end: {'x': 3, 'y': 0},
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150.0,
                width: 400.0,
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    print(fieldModel.proccedField);
                  },
                ),
              ),
            ],
          ),
          customGridBuilder(fieldModel),
        ],
      ),
    );
  }
}

Widget customGridBuilder(FieldModel model) {
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
