import 'package:redeeming_coin_transfer_summary/models/transfer_summary.dart';

import '../models/book_model.dart';

class TransferController {
  TransferSummary _summary;

  TransferController(this._summary);

  TransferSummary get summary => _summary;

  void updateSummary(TransferSummary summary) {
    _summary = summary;
  }
}
