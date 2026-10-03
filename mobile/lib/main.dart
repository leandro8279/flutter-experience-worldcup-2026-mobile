import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:mobile/config/application_bindings.dart';
import 'package:mobile/core/logging/app_logger.dart';
import 'package:mobile/core/logging/log_output.dart';
import 'package:mobile/ui/core/theme/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() {
  AppLogger.configure(
    level: kDebugMode ? Level.ALL : Level.INFO,
    outputs: const [ConsoleLogOutput()],
  );
  runApp(const ApplicationBindings(child: MainApp()));
}

// 15.3 - A Faixa de Seleções
class const MainApp({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light,
      builder: (context, child) {
        return MaterialUiCompatibilityBridge(child: child!);
      },
      routerConfig: context.read<GoRouter>(),
    );
  }
}
