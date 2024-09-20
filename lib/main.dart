import 'package:ekyc_id_flutter/ekyc_id_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import 'pages/entry_point/entry_point.dart';
import 'themes/blue.dart';
import 'themes/brown.dart';
import 'themes/green.dart';
import 'themes/text_theme.dart';

import 'firebase_options.dart';
import 'providers/color_pallete_provider.dart';

//import 'pages/verification_page/verification_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EkycIDServices.instance.setURL("YOUR_SERVER_URL");
  // Right after creation client connects to the backend and authenticates the user.
  // You can set `options: StreamVideoOptions(autoConnect: false)` if you want to disable auto-connect.
  // ignore: unused_local_variable
  final client = StreamVideo(
    'mmhfdzb5evj2',
    user:
        User.regular(userId: 'Savage_Opress', role: 'admin', name: 'John Doe'),
    userToken:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL1NhdmFnZV9PcHJlc3MiLCJ1c2VyX2lkIjoiU2F2YWdlX09wcmVzcyIsInZhbGlkaXR5X2luX3NlY29uZHMiOjYwNDgwMCwiaWF0IjoxNzI2NDc0MjgzLCJleHAiOjE3MjcwNzkwODN9.XgfTnp3JSiTXdE8HWd2XBAyf9FTJFS1xDFX2dJ-mJLc',
  );
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = createTextTheme(context);
    List themes = [
      BlueMaterialTheme(textTheme),
      GreenMaterialTheme(textTheme),
      BrownMaterialTheme(textTheme),
      BlueMaterialTheme(textTheme),
    ];
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    int pallete = ref.watch(colorPalleteProvider);
    var theme = themes[pallete];

    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.light(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const EntryPoint(),
    );
  }
}
