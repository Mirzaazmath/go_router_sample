import 'package:flutter/material.dart';

import 'package:go_router_sample/routes/router_config.dart';
void main(){

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp.router(
      routerConfig: router,

    );
  }
}
