// Handlers
import 'package:fluro/fluro.dart';
import 'package:flutter_web_demo/ui/views/counter_provider_view.dart';
import 'package:flutter_web_demo/ui/views/counter_view.dart';
import 'package:flutter_web_demo/ui/views/view_404.dart';

final Handler counterHandler = Handler(
  handlerFunc: (_, params) {
    return CounterView(base: params['base']?[0] ?? '5');
  },
);

final Handler counterProviderHandler = Handler(
  handlerFunc: (_, params) {
    return CounterProviderView(base: params['q']?[0] ?? '5');
  },
);
final Handler pageNotFound = Handler(handlerFunc: (_, __) => const View404());
final Handler dashboardUserHandler =
    Handler(handlerFunc: (_, __) => const View404());
