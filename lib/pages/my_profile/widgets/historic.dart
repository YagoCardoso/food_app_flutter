import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentHistoryItem {
  final String description;
  final double amount;
  final bool isCompleted;
  final DateTime date;

  PaymentHistoryItem({
    required this.description,
    required this.amount,
    required this.isCompleted,
    required this.date,
  });
}

class HistoryTab extends StatelessWidget {
  final List<PaymentHistoryItem> paymentHistory = [
    PaymentHistoryItem(
      description: "Carne ao molho",
      amount: 55.00,
      isCompleted: true,
      date: DateTime.now().subtract(Duration(days: 2)),
    ),
    PaymentHistoryItem(
      description: "Frango grelhado",
      amount: 39.00,
      isCompleted: true,
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
    PaymentHistoryItem(
      description: "Salada mista",
      amount: 49.00,
      isCompleted: true,
      date: DateTime.now(),
    ),
    PaymentHistoryItem(
      description: "Hot Roll",
      amount: 79.00,
      isCompleted: false,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: paymentHistory.length,
      itemBuilder: (context, index) {
        final item = paymentHistory[index];
        final formattedAmount =
            NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$')
                .format(item.amount);

        return ListTile(
          title: Text("${item.description} - $formattedAmount"),
          subtitle: Text(
            "${item.isCompleted ? 'Pagamento concluído' : 'Aguardando pagamento'} - ${item.date.day}/${item.date.month}/${item.date.year}",
          ),
          // Adicione outros widgets ou estilos conforme necessário
        );
      },
    );
  }
}
