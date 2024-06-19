import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/widgets/atoms/custom_text_field.dart';

class SummaryForm extends StatelessWidget {
  final TextEditingController amountController;
  final TextEditingController methodController;
  final TextEditingController holderNameController;
  final TextEditingController accountNumberController;

  const SummaryForm({
    super.key,
    required this.amountController,
    required this.methodController,
    required this.holderNameController,
    required this.accountNumberController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          hintText: '\$1,000',
          controller: amountController,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hintText: 'Paypal',
                controller: methodController,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                hintText: 'Joan Dadaly',
                controller: holderNameController,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: '1234567890',
          controller: accountNumberController,
        ),
      ],
    );
  }
}
