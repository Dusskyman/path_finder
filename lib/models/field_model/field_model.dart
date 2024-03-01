//Freezed is unnessesary, this is a local model

//This model used for all field in grid and it's a part of A* algorithm(https://ru.wikipedia.org/wiki/A*) realization

class Field {
  final int x;
  final int y;

  //The cost of a cell is determined by the distance from the start
  int sCost = 0;

  //The cost of a cell is determined by the distance from the end
  int eCost = 0;

  //Used to reconstruct path
  Field? parent;

  Field(this.x, this.y);

  //The cost of a cell is determined by the distance from the start and from end
  int get fCost => sCost + eCost;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Field && other.x == x && other.y == y;
  }

  @override
  int get hashCode => x * 31 + y;
}
