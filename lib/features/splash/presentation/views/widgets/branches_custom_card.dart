import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class BranchesCustomCard extends StatelessWidget {
  final String companyName;
  final String status;
  final String managerName;

  const BranchesCustomCard({
    super.key,
    required this.companyName,
    required this.status,
    required this.managerName,
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
            _InfoRow(label: "الشركة", value: companyName),
            const Divider(),
            _InfoRow(label: "الحالة", value: status),
            const Divider(),
            _InfoRow(label: "المدير", value: managerName),
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
