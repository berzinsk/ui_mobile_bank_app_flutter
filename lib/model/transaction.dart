class Transaction {
  final String from;
  final String to;
  final String amount;
  final DateTime date;

  Transaction({
    required this.from,
    required this.to,
    required this.amount,
    required this.date,
  });
}
