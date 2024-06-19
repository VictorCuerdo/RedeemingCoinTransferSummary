import 'package:flutter/material.dart';
import 'package:redeeming_coin_transfer_summary/widgets/atoms/rounded_button.dart';
import 'package:redeeming_coin_transfer_summary/widgets/molecules/summary_detail.dart';
import 'package:redeeming_coin_transfer_summary/widgets/organisms/summary_form.dart';

class TransferSummaryTemplate extends StatelessWidget {
  final TextEditingController amountController;
  final TextEditingController methodController;
  final TextEditingController holderNameController;
  final TextEditingController accountNumberController;

  const TransferSummaryTemplate({
    super.key,
    required this.amountController,
    required this.methodController,
    required this.holderNameController,
    required this.accountNumberController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF110417),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transfer Summary',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Confirm the details of the transaction and finalize the redemption',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 24),
            SummaryForm(
              amountController: amountController,
              methodController: methodController,
              holderNameController: holderNameController,
              accountNumberController: accountNumberController,
            ),
            const SizedBox(height: 24),
            Text(
              'Digital Receipt',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const SummaryDetail(title: 'Date', value: '12/05/2024'),
            const SummaryDetail(title: 'Time', value: '16:00'),
            const SummaryDetail(title: 'Transaction ID', value: 'TID3872XG9'),
            const SummaryDetail(title: 'Amount', value: '\$1,000.00'),
            const SummaryDetail(
                title: 'Destination Account', value: '1234567890123456'),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                  checkColor: Colors.green,
                  activeColor: Colors.deepPurple,
                ),
                const Text(
                  'Email a digital receipt to me',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            RoundedButton(
              text: 'Confirm',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
