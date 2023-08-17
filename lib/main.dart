import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_loggy/flutter_loggy.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/presentation/screens/cart/bloc/cart_cubit.dart';
import 'package:myapp/presentation/shared/bar/language/bloc/language_cubit.dart';
import 'package:myapp/utils/locator.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'main_page.dart';
import 'presentation/screens/root/bloc/root_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SentryFlutter.init(
    (opt) => opt.dsn = '',
  );

  Loggy.initLoggy(
    logPrinter: const PrettyDeveloperPrinter(),
  );

  await setUpAllLocators();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<RootCubit>(
          create: (context) => locator<RootCubit>(),
        ),
        BlocProvider<CartCubit>(
          create: (context) => locator<CartCubit>()..load(),
        ),
        BlocProvider<LanguageCubit>(
          create: (context) => locator<LanguageCubit>(),
        ),
      ],
      child: const MainPage(),
    ),
  );
}
