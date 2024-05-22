// import 'package:dokun/app/bindings/home_binding.dart';
// import 'package:dokun/app/bindings/map_binding.dart';
// import 'package:dokun/app/bindings/chat_binding.dart';
import 'package:dokun/app/bindings/dubbing_binding.dart';
import 'package:dokun/app/bindings/editdubbing_binding.dart';
// import 'package:dokun/app/bindings/newchat_binding.dart';
// import 'package:dokun/app/bindings/resources_binding.dart';
import 'package:dokun/app/routes/route.dart';
//import 'package:dokun/app/ui/pages/chat_page/chat_page.dart';
import 'package:dokun/app/ui/pages/dubbing_page/dubbing_page.dart';
import 'package:dokun/app/ui/pages/editdubbing_page/editdubbing_page.dart';
// import 'package:dokun/app/ui/pages/home_page/home_page.dart';
// import 'package:dokun/app/ui/pages/map_page/map_page.dart';
// import 'package:dokun/app/ui/pages/newchat_page/newchat_page.dart';
// import 'package:dokun/app/ui/pages/resources_page/resources_page.dart';
// import 'package:dokun/app/ui/pages/showresources_page/showresources_page.dart';

import 'package:dokun/app/ui/theme/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  Animate.restartOnHotReload = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'dokun',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.dark,
      initialRoute: Routes.dubbing,
      getPages: [
        GetPage(
          name: Routes.dubbing,
          page: () => const DubbingPage(),
          binding: DubbingBinding(),
        ),
        GetPage(
          name: Routes.editDubbing,
          page: () => const EditDubbingPage(),
          binding: EditDubbingBinding(),
        ),
        // GetPage(
        //   name: Routes.map,
        //   page: () => const MapPage(),
        //   binding: MapBinding(),
        // ),
        // GetPage(
        //   name: Routes.resources,
        //   page: () => const ResourcesPage(),
        //   binding: ResourcesBinding(),
        // ),
      ],
    );
  }
}
