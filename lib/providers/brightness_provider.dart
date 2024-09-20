import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'brightness_provider.g.dart';

@riverpod
class Brightness extends _$Brightness {
  @override
  bool build() {
    return true;
  }

  void toggleDarkTheme() {
    state = !state;
  }
}