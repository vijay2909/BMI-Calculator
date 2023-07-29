import '../../core/enums.dart';
import '../models/height_unit_menu.dart';
import '../models/weight_unit_menu.dart';

class HomeDataProvider {
  List<HeightUnitMenu> getHeightUnitMenus() {
    return [
      HeightUnitMenu(title: 'Standard', unit: HeightUnit.standard),
      HeightUnitMenu(title: 'Metric', unit: HeightUnit.metric),
    ];
  }

  List<WeightUnitMenu> getWeightUnitMenus() {
    return [
      WeightUnitMenu(title: 'Kg', unit: WeightUnit.kg),
      WeightUnitMenu(title: 'Pound', unit: WeightUnit.pound),
    ];
  }
}
