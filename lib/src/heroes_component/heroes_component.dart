import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import '../hero.dart';
import '../hero_service.dart';
import '../mock_heroes.dart';

@Component(
  selector: 'my-heroes',
  templateUrl: 'heroes_component.html',
  styleUrls: const ['heroes_component.css'],
  directives: const [CORE_DIRECTIVES, formDirectives],
  providers: const [HeroService],
  pipes: const [COMMON_PIPES],
)
class HeroesComponent implements OnInit {
  final title = 'Heroes';
  final HeroService _heroService;
  final Router _router;
  Hero selectedHero;
  List<Hero> heroes = mockHeroes;
  
  HeroesComponent(this._heroService, this._router);

  void ngOnInit() => getHeroes();

  void onSelect(Hero hero) => selectedHero = hero;

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroes();
  }

  Future<Null> gotoDetail() => 
    _router.navigate([
      'HeroDetail',
      {'id': selectedHero.id.toString()}
    ]);
}
