import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionMpdel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022",
        amount: r"$20,129",
        isWithdrawal: true),
    TransactionMpdel(
        title: "Landing Page project",
        date: "13 Apr, 2022",
        amount: r"$20,129",
        isWithdrawal: false),
    TransactionMpdel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022",
        amount: r"$20,129",
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionMpdel: e)).toList(),
    );
  }
}
