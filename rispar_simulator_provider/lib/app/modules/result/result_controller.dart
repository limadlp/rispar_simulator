import '../../models/data_output_model.dart';

class ResultController {
  DataOutputModel? dataOutputModel;

  double get collateral {
    print(dataOutputModel?.collateral);
    return dataOutputModel?.collateral ?? 0 / 100000000;
  }
}
