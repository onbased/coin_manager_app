import 'package:coin_manager/api/api.dart';
import 'package:coin_manager/pages/login/welcome_page.dart';
import 'imports.dart';

void main() {
  initSessionHandling();
  Currency.initExchangeRates();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cryptocoinist',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
