import 'package:go_router/go_router.dart';
import 'package:ssbb/features/Splash/presentation/views/splash_view.dart';
import 'package:ssbb/features/home/presentation/views/book_details_view.dart';
import 'package:ssbb/features/home/presentation/views/home_view.dart';
import 'package:ssbb/features/search/presentation/views/search_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/homeview', builder: (context, state) => const HomeView()),
      GoRoute(path: '/bookdetailsview', builder: (context, state) => const BookDetailsView()),
      GoRoute(path: '/searchview', builder: (context, state) => const SearchView()),
    ],
  );
}
