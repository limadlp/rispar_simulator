import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/modules/home/home_controller.dart';
import '../../core/modules/app_provider_module.dart';
import 'home_page.dart';

class HomeModule extends AppProviderModule {
  HomeModule()
      : super(
          bindings: [
            ChangeNotifierProvider(create: (context) => HomeController()),
          ],
          routers: {
            '/': (context) => HomePage(
                  homeController: context.read(),
                ),
          },
        );
}
