class TransactionhistoryModel {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransactionhistoryModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
