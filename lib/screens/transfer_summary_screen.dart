import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/widgets/templates/transfer_summary_template.dart';

class TransferSummaryScreen extends StatelessWidget {
  static const routeName = '/transfer-summary';

  final TextEditingController amountController =
      TextEditingController(text: '\$1,000');
  final TextEditingController methodController =
      TextEditingController(text: 'Paypal');
  final TextEditingController holderNameController =
      TextEditingController(text: 'Joan Dadaly');
  final TextEditingController accountNumberController =
      TextEditingController(text: '1234567890');

  TransferSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TransferSummaryTemplate(
      amountController: amountController,
      methodController: methodController,
      holderNameController: holderNameController,
      accountNumberController: accountNumberController,
    );
  }
}
