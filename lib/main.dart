import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbb/constants.dart';
import 'package:ssbb/core/utils/app_router.dart';
import 'package:ssbb/core/utils/service_locator.dart';
import 'package:ssbb/features/home/data/repos/home_repo_iplm.dart';
import 'package:ssbb/features/home/presentation/maneger/Bookly%20Books/bookly_books_cubit.dart';
import 'package:ssbb/features/home/presentation/maneger/newset%20books/newset_books_cubit.dart';

void main() {
  setupGetIt();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BooklyBooksCubit(getIt.get<HomeRepoIplm>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(getIt.get<HomeRepoIplm>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(kprimaryColor.toARGB32()),
        ),
      ),
    );
  }
}
