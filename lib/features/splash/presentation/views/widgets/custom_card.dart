import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String partnerName;
  final String position;
  final String sharePercentage;

  const CustomCard({
    super.key,
    required this.partnerName,
    required this.position,
    required this.sharePercentage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: AppColors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            _InfoRow(label: "الشريك", value: partnerName),
            const Divider(),
            _InfoRow(label: "المنصب", value: position),
            const Divider(),
            _InfoRow(label: "نسبة السهم", value: sharePercentage),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            color: AppColors.black,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
