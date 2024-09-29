import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';
import 'package:video_chat/themes/purple.dart';
import 'pages/auth_page/login_page.dart';
import 'services/user_from_id.dart';
import 'themes/blue.dart';
import 'models/user_model.dart';
import 'pages/auth_page/registration_page.dart';
import 'pages/entry_point/entry_point.dart';
import 'providers/users_stream_provider.dart';
import 'services/firebase_auth.dart';

import 'firebase_options.dart';
import 'providers/color_pallete_provider.dart';
import 'themes/brown.dart';
import 'themes/cherry.dart';
import 'themes/green.dart';
import 'themes/text_theme.dart';

//import 'pages/verification_page/verification_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Right after creation client connects to the backend and authenticates the user.
  // You can set `options: StreamVideoOptions(autoConnect: false)` if you want to disable auto-connect.
  // ignore: unused_local_variable
  final client = StreamVideo(
    // 'mmhfdzb5evj2',
    'mmhfdzb5evj2',
    user: User.regular(userId: 'Savage_Opress', name: ''),
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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = createTextTheme(context);
    List themes = [
      BlueMaterialTheme(textTheme),
      GreenMaterialTheme(textTheme),
      BrownMaterialTheme(textTheme),
      CherryTheme(textTheme),
      PurpleTheme(textTheme),
    ];
    var loggedInUser = AuthService().authStateChanges;
    AsyncValue<List<MyUser>> usersStream = ref.watch(usersStreamProvider);
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    int pallete = ref.watch(colorPalleteProvider);
    var theme = themes[pallete];

    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.light(),
      debugShowCheckedModeBanner: false,
      title: 'Vibe Chat',
      home: StreamBuilder(
          stream: loggedInUser,
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              var uid = snapshot.data?.uid;
              if (uid != null) {
                return usersStream.when(
                    data: (data) {
                      var currentUser = userFromID(data, uid);
                      Future.delayed(const Duration( seconds: 0), () {
                        ref.read(colorPalleteProvider.notifier).setColorPallete(currentUser.theme);
                      });
                   
                      return EntryPoint(
                        currentUser: currentUser,
                        usersData: data,
                      );
                    },
                    error: (error, stack) => Center(
                        child: Text("Error: '${error.toString()}' occured.")),
                    loading: () {
                      return Center(
                          child: CircularProgressIndicator(
                        //strokeWidth: 8.0,
                        color: Theme.of(context).primaryColor,
                      ));
                    });
              } else {
                return LogInPage();
              }
            } else {
              return RegistrationPage();
            }
          }),
    );
  }
}
