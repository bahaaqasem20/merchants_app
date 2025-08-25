import 'package:flutter/material.dart';
import '../../../../../core/utils/app_colors.dart';

class AuthorizedsignatoriesCustomCard extends StatelessWidget {
  final String branchManagerName;
  final String validity;
  final String signatureValidity;

  const AuthorizedsignatoriesCustomCard({
    super.key,
    required this.branchManagerName,
    required this.validity,
    required this.signatureValidity,
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
            _InfoRow(label: "مدير الفرع", value: branchManagerName),
            const Divider(),
            _InfoRow(label: "الصلاحية", value: validity),
            const Divider(),
            _InfoRow(label: "صلاحية التوقيع", value: signatureValidity),
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
