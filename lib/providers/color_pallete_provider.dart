import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'color_pallete_provider.g.dart';

@riverpod
class ColorPallete extends _$ColorPallete {
  @override
  int build() {
    return 0;
  }

  void setColorPallete(int pallete) {
    state = pallete;
  }
}