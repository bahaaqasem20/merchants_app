import 'package:flutter/material.dart';
import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';

class AddServiceModal extends StatelessWidget {
  const AddServiceModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            Text(
              "أضف خدمة جديدة",
              style: AppStyles.textStyleBold12.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: "اسم الخدمة",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              child: const Text("حفظ", style: AppStyles.textStyleBold12),
            ),
          ],
        ),
      ),
    );
  }
}
