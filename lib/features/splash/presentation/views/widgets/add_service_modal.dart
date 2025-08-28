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
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              items: const [
                DropdownMenuItem(value: "خدمة 1", child: Text("خدمة 1", style: TextStyle(color: AppColors.primaryLight))),
                DropdownMenuItem(value: "خدمة 2", child: Text("خدمة 2", style: TextStyle(color: AppColors.primaryLight))),
                DropdownMenuItem(value: "خدمة 3", child: Text("خدمة 3", style: TextStyle(color: AppColors.primaryLight))),
              ],
              onChanged: (value) {
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 44,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary2,

                ),
                child: const Text("حفظ", style: AppStyles.textStyleBold13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
