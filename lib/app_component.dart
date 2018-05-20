import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/dashboard_component/dashboard_component.dart';
import 'src/services/hero_service.dart';
import 'src/heroes_component/heroes_component.dart';
import 'src/hero_detail_component/hero_detail_component.dart';


@RouteConfig(const [
  const Redirect(path: '/', redirectTo: const ['Dashboard']),
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent),
  const Route(path: '/dashboard', name: 'Dashboard', component: DashboardComponent),
  const Route(path: '/detail/:id', name: 'HeroDetail', component: HeroDetailComponent),
])

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
  providers: const [HeroService],
)
class AppComponent {
  final title = 'Tour of Heroes';
}