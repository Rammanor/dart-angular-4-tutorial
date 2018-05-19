import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';
import 'src/mock_heros.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [CORE_DIRECTIVES, formDirectives],
)
class AppComponent {
  final title = 'Tour of Heroes';
  Hero selectedHero;
  List<Hero> heroes = mockHeroes;

  void onSelect(Hero hero) => selectedHero = hero;
}
