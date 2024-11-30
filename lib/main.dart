import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_routes.dart';
import 'doc_app.dart';
void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
