import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.name,
      builder: (context, state) => SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: Animatedscreen.name,
      builder: (context, state) => Animatedscreen(),
    ),
    GoRoute(
      path: '/ui_controls',
      name: UiControlsScreen.name,
      builder: (context, state) => UiControlsScreen(),
    ),
    GoRoute(
      path: '/app_tutorial',
      name: Apptutorial.name,
      builder: (context, state) => Apptutorial(),
    ),
    GoRoute(
      path: '/infinite_scroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    ),
  ],
);
