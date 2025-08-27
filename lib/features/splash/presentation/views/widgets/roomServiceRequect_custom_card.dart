import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class RoomservicerequectCustomCard extends StatelessWidget {
  final String serviceName;
  final String servicePrice;
  final String time;

  const RoomservicerequectCustomCard({
    super.key,
    required this.serviceName,
    required this.servicePrice,
    required this.time,
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
            _InfoRow(label: "اسم الخدمة", value: serviceName),
            const Divider(),
            _InfoRow(label: "سعر الخدمة", value: servicePrice),
            const Divider(),
            _InfoRow(label: "مدة التنفيذ", value: time),
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
