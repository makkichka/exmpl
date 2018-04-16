@TestOn('browser')

import 'package:angular/angular.dart';
import 'package:angular_test/angular_test.dart';
import 'package:test/test.dart';

import 'package:angular_app/app_component.dart';

@AngularEntrypoint()
void main() {
  final testBed = new NgTestBed<AppComponent>().addProviders([AppComponent]);
  NgTestFixture<AppComponent> fixture;

  setUp(() async {
    fixture = await testBed.create();
  });

  tearDown(disposeAnyRunningTest);

  test('Default greeting', () {
    expect(fixture.text, 'Hello Angular');
  });


  int fibonacci(int n){
    if (n == 0 || n == 1) return n;

    return fibonacci(n - 1) + fibonacci(n - 2);
  }

  test('Fibonacci value', (){
    expect(fibonacci(6), equals(8));
  });


  
}
