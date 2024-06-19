import 'dart:convert';

class TransferSummary {
  // Represents the summary of a transfer.

  final String amount; //amount to be transferred.
  final String method; // The method of transfer (PayPal, wire, bank transfer).
  final String holderName; // The name of the account holder.
  final String
      accountNumber; // The account number from which the amount is being transferred.
  final String date; // The date of the transfer.
  final String time; // The time of the transfer.
  final String transactionId; // The transaction ID of the transfer.
  final String
      destinationAccount; // The destination account number to which the amount is being transferred.

  TransferSummary({
    //Creates an instance of the class
    required this.amount,
    required this.method,
    required this.holderName,
    required this.accountNumber,
    required this.date,
    required this.time,
    required this.transactionId,
    required this.destinationAccount,
  });

  factory TransferSummary.fromJson(Map<String, dynamic> json) {
    //Creates an instance from a JSON that contains all fields
    return TransferSummary(
      amount: json['amount'],
      method: json['method'],
      holderName: json['holderName'],
      accountNumber: json['accountNumber'],
      date: json['date'],
      time: json['time'],
      transactionId: json['transactionId'],
      destinationAccount: json['destinationAccount'],
    );
  }

  Map<String, dynamic> toJson() {
    //Returns a JSON containing all the necessary keys
    return {
      'amount': amount,
      'method': method,
      'holderName': holderName,
      'accountNumber': accountNumber,
      'date': date,
      'time': time,
      'transactionId': transactionId,
      'destinationAccount': destinationAccount,
    };
  }
}
