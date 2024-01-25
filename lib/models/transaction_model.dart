class TransactionMpdel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransactionMpdel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
