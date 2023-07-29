import '../../domain/data_providers/home_data_provider.dart';
import '../../domain/models/height_unit_menu.dart';
import '../../domain/models/weight_unit_menu.dart';
import '../../domain/repositories/static_data_repository.dart';

class StaticDataRepositoryImpl implements StaticDataRepository {
  final HomeDataProvider homeDataProvider;

  StaticDataRepositoryImpl(this.homeDataProvider);

  @override
  List<HeightUnitMenu> getHeightUnitMenus() {
    return homeDataProvider.getHeightUnitMenus();
  }

  @override
  List<WeightUnitMenu> getWeightUnitMenus() {
    return homeDataProvider.getWeightUnitMenus();
  }
}
