import 'package:provider/provider.dart';

import '../../core/modules/app_provider_module.dart';
import 'result_controller.dart';
import 'result_page.dart';

class ResultModule extends AppProviderModule {
  ResultModule()
      : super(
          bindings: [
            Provider(create: (context) => ResultController()),
          ],
          routers: {
            '/result': (context) => const ResultPage(),
          },
        );
}
