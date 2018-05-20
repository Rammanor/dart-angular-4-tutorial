import 'package:angular/angular.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
  selector: 'hero-detail',
  templateUrl: 'hero_detail_component.html',
  styleUrls: const ['hero_detail_component.css'],
  directives: const [CORE_DIRECTIVES, formDirectives],
)
class HeroDetailComponent {
  @Input() Hero hero;
}