import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'counter_provider.g.dart';

//the oppsite of dispoose
@Riverpod(keepAlive: true)
class Count extends _$Count {
  int count = 0;
  @override
  int build() {
    return 0;
  }

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}
