// Não é mais utilizada. Forma mais simples de se fazer roteamento,
// porém não permite argumentos.

import 'package:flutter/widgets.dart';
import 'package:learn_flutter/screens/home.dart';
import 'package:learn_flutter/screens/second.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => const Home(title: 'Learn Flutter'),
  '/second': (context) => const SecondPage(
        title: 'Second Page',
      ),
};
