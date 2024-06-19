import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/screens/transfer_summary_screen.dart';
import 'package:redeeming_coin_transfer_summary/theme/custom_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redeeming Coin Transfer Summary',
      theme: CustomTheme.lightTheme,
      initialRoute: TransferSummaryScreen.routeName,
      routes: {
        TransferSummaryScreen.routeName: (context) => TransferSummaryScreen(),
      },
    );
  }
}
