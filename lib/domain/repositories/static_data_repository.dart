import '../models/height_unit_menu.dart';
import '../models/weight_unit_menu.dart';

abstract class StaticDataRepository {
  List<HeightUnitMenu> getHeightUnitMenus();

  List<WeightUnitMenu> getWeightUnitMenus();
}
