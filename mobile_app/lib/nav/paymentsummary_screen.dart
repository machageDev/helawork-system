// lib/screens/payment_summary_screen.dart
import 'package:flutter/material.dart';
import 'package:helawork_client/helawork_client.dart';

class PaymentSummaryScreen extends StatefulWidget {
  final Client client;
  final int workerId;
  final String phoneNumber; // Worker phone for withdrawal

  const PaymentSummaryScreen({
    super.key,
    required this.client,
    required this.workerId,
    required this.phoneNumber,
  });

  @override
  State<PaymentSummaryScreen> createState() => _PaymentSummaryScreenState();
}

class _PaymentSummaryScreenState extends State<PaymentSummaryScreen> {
  double? approvedHours;
  double? hourlyRate;
  double? totalEarnings;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPaymentSummary();
  }

  Future<void> _loadPaymentSummary() async {
    try {
      // Call endpoint correctly through timeLog
      final hours = await widget.client.timeLog.getApprovedHours(
        workerId: widget.workerId,
      );

      // Call payment endpoint
      final rate = await widget.client.payment.getActiveRate(
        workerId: widget.workerId,
      );

      setState(() {
        approvedHours = hours;
        hourlyRate = rate?.ratePerHour;
        totalEarnings = (hours ?? 0) * (rate?.ratePerHour ?? 0);
        isLoading = false;
      });
    } catch (e) {
      setState(() => isLoading = false);
      print("Error loading payment summary: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error loading summary: $e")),
      );
    }
  }

  Future<void> _withdraw() async {
    try {
      final response = await widget.client.payment.withdrawPayment(
        workerId: widget.workerId,
        phoneNumber: widget.phoneNumber,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(response)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Payment Summary")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildCard("Approved Hours",
                      approvedHours?.toStringAsFixed(2) ?? "0"),
                  _buildCard("Hourly Rate",
                      "KES ${hourlyRate?.toStringAsFixed(2) ?? '0'}"),
                  _buildCard("Total Earnings",
                      "KES ${totalEarnings?.toStringAsFixed(2) ?? '0'}"),
                  const Spacer(),
                  ElevatedButton.icon(
                    onPressed: _withdraw,
                    icon: const Icon(Icons.wallet),
                    label: const Text("Withdraw to M-PESA"),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildCard(String title, String value) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: Text(value, style: const TextStyle(fontSize: 16)),
      ),
    );
  }
}
