// lib/features/payment/presentation/widget/payment_method.dart
import 'package:flutter/material.dart';

enum Metode { tunai, qris }

class PaymentMethod extends StatefulWidget {
  final void Function(Metode) onSelectionChanged;

  const PaymentMethod({super.key, required this.onSelectionChanged});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  Metode selectedMethod = Metode.tunai;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Metode>(
      style: SegmentedButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        selectedForegroundColor: Colors.white,
        selectedBackgroundColor: Colors.green,
      ),
      segments: const <ButtonSegment<Metode>>[
        ButtonSegment<Metode>(
          value: Metode.tunai,
          label: Text('Tunai'),
          icon: Icon(Icons.money),
        ),
        ButtonSegment<Metode>(
          value: Metode.qris,
          label: Text('Qris'),
          icon: Icon(Icons.qr_code_scanner_outlined),
        ),
      ],
      selected: <Metode>{selectedMethod},
      onSelectionChanged: (Set<Metode> newSelection) {
        setState(() {
          selectedMethod = newSelection.first;
        });
        widget.onSelectionChanged(selectedMethod);
      },
    );
  }
}
