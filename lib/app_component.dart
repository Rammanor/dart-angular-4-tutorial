import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';
import 'src/hero_detail_component/hero_detail_component.dart';
import 'src/hero_service.dart';
import 'src/mock_heroes.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.css'],
  directives: const [CORE_DIRECTIVES, formDirectives, HeroDetailComponent],
  providers: const [HeroService],
)
class AppComponent implements OnInit {
  final name = 'Angular';
  final title = 'Tour of Heroes';
  Hero selectedHero;
  List<Hero> heroes = mockHeroes;
  final HeroService _heroService;
  
  AppComponent(this._heroService);

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }
}
