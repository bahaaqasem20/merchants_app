import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class CompanyserviceCustomCard extends StatelessWidget {
  final String serviceName;
  final String serviceDate;

  const CompanyserviceCustomCard({
    super.key,
    required this.serviceName,
    required this.serviceDate,
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
            _InfoRow(label: "تاريخ الاضافة", value: serviceDate),
            const Divider(),
            _InfoRow(
              label: "العمليات",
              valueWidget: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit_rounded, color: AppColors.primary),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete_rounded, color: Colors.red),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String? value;
  final Widget? valueWidget;

  const _InfoRow({required this.label, this.value, this.valueWidget});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        valueWidget ??
            Text(
              value ?? '',
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
