import 'package:flutter/material.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
