import 'package:flutter_test/flutter_test.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import 'package:rispar_simulator_provider/app/models/data_output_model.dart';
import 'package:rispar_simulator_provider/app/repositories/simulation_repository_impl.dart';

void main() {
  final repository = SimulationRepositoryImpl();
  final dataInputModel = DataInputModel(
    fullname: 'Test Name',
    email: 'testname@email.com',
    ltv: 50,
    amount: 5000,
    term: 12,
    hasProtectedCollateral: true,
  );
  final dataOutputModel = DataOutputModel(
    id: "e9573d4a-9121-4dde-bff8-b4fe5f4be346",
    fullname: "Test Name",
    email: "testName@test.com",
    ltv: 50,
    contractValue: 5332.485662,
    netValue: 5000.0,
    installmentValue: 90.111901,
    iofFee: 172.511093,
    originationFee: 159.97457,
    term: 12,
    collateral: 8913433,
    collateralUnitPrice: 112190.215055,
    firstDueDate: "2022-07-10",
    monthlyRate: 2.357816,
    annualRate: 32.267196,
  );

  test('It should get a OutputDataModel', () async {
    final response = await repository.getSimulationData(dataInputModel);
    expect(response.runtimeType, dataOutputModel.runtimeType);
  });
}

String jsonData = ''' 
{
    "id": "e9573d4a-9121-4dde-bff8-b4fe5f4be346",
    "fullname": "Test Test",
    "email": "test@test.com",
    "ltv": 50,
    "contract_value": 5332.485662,
    "net_value": 5000.0,
    "installment_value": 90.111901,
    "last_installment_value": 5422.17706,
    "iof_fee": 172.511093,
    "origination_fee": 159.97457,
    "term": 12,
    "collateral": 8913433,
    "collateral_in_brl": 10000.0,
    "collateral_unit_price": 112190.215055,
    "first_due_date": "2022-07-10",
    "last_due_date": "2023-06-10",
    "interest_rate": 1.69,
    "monthly_rate": 2.357816,
    "annual_rate": 32.267196
}

''';
