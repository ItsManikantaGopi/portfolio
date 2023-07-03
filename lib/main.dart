import 'package:Manikanta_Gopi/widgets/splash_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'screens/home_page.dart';

void main() {
  // before the running of the Flutter app
  if(kIsWeb){
    // if the app is running on the web
    // register the web plugins
    // this is required for the meta seo package
    MetaSEO().config();
    setUrlStrategy(PathUrlStrategy());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      // add meta seo open graph tags as you want
      meta.ogTitle(ogTitle: 'Manikanta Gopi');
      meta.ogDescription(ogDescription: 'portfolio');
      meta.ogImage(ogImage: 'https://avatars.githubusercontent.com/u/58616351?v=4');
    }
    return MaterialApp(
        title: 'Manikanta Gopi',
        theme: ThemeData.light(useMaterial3: true),
        darkTheme: ThemeData.dark(useMaterial3: true),
        home: const SplashScreenWidget(
          nextScreenWidget: HomePage(),
        ));
  }
}

