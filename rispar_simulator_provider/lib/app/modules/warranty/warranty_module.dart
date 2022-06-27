import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/warranty_controller.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/warranty_page.dart';

import '../../core/modules/app_provider_module.dart';

class WarrantyModule extends AppProviderModule {
  WarrantyModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (context) => WarrantyController(
                simulationService: context.read(),
              ),
            ),
          ],
          routers: {
            '/warranty': (context) => const WarrantyPage(),
          },
        );
}
