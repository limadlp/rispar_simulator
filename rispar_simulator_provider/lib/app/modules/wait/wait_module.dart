import 'package:provider/provider.dart';

import '../../core/modules/app_provider_module.dart';
import 'wait_controller.dart';
import 'wait_page.dart';

class WaitModule extends AppProviderModule {
  WaitModule()
      : super(
          bindings: [
            Provider(create: (context) => WaitController()),
          ],
          routers: {
            '/wait': (context) => const WaitPage(),
          },
        );
}
