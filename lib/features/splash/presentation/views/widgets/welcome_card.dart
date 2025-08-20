import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../core/utils/app_colors.dart';

class WelcomeCard extends StatelessWidget {
  final String name;

  const WelcomeCard(
      {
        super.key,
        required this.name
      }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        color: AppColors.grey,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _WelcomeCardContent(name: name),
        ),
      ),
    );
  }
}

class _WelcomeCardContent extends StatelessWidget {
    final String name;
   const _WelcomeCardContent({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children:  [
            Text(
              "أهلا بك مجدداً",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
            SizedBox(width: 6),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // البيانات
        const _InfoRow(label: 'شركة', value: 'تكنولوجيا المعلومات'),
        const SizedBox(height: 8),
        _InfoRow(label: 'التاريخ', value: _formatDate(DateTime.now())),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.black,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

String _formatDate(DateTime date) {
  return DateFormat('EEEE, d MMMM yyyy', 'ar').format(date);
}
