import 'package:angular/angular.dart';


@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES],
)
class AppComponent {

  var valueFib = fibonacci(6);


  static int fibonacci(int n){
    if (n == 0 || n == 1) return n;

    return fibonacci(n - 1) + fibonacci(n - 2);
  }


  void calculate(int n){
    valueFib = fibonacci(n);
  }
}
