import 'package:go_router/go_router.dart';
import 'package:push_app/presentation/screens/details_screen.dart';

import '../../presentation/screens/home_screen.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/details/:pushMessageId',
    builder: (context, state) {
      final pushMessageId = state.pathParameters['pushMessageId']!;
      return DetailsScreen(pushMessageId: pushMessageId);
    },
  ),
]);
