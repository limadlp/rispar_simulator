import 'package:provider/provider.dart';

import '../../core/modules/app_provider_module.dart';
import 'amount_controller.dart';
import 'amount_page.dart';

class AmountModule extends AppProviderModule {
  AmountModule()
      : super(
          bindings: [
            ChangeNotifierProvider(create: (context) => AmountController()),
          ],
          routers: {
            '/amount': (context) => AmountPage(
                  amountController: context.read(),
                ),
          },
        );
}
