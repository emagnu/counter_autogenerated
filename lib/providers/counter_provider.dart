//   //
//  Import LIBRARIES
import 'package:riverpod_annotation/riverpod_annotation.dart';
//  Import FILES
//  PARTS
part 'counter_provider.g.dart';
//  PROVIDERS
//  counterProviderProvider
//  //  - dart run build_runner watch --delete-conflicting-outputs

@riverpod
class CounterProvider extends _$CounterProvider {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
