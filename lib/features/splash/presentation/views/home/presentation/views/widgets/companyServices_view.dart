import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../../core/utils/app_styles.dart';
import '../../../../widgets/add_service_modal.dart';

class CompanyservicesView extends StatefulWidget {
  const CompanyservicesView({super.key});

  @override
  State<CompanyservicesView> createState() => _CompanyservicesViewState();
}

class _CompanyservicesViewState extends State<CompanyservicesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary,
          centerTitle: true,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Text("قائمة خدمات الشركة", style: AppStyles.textStyleBold11),
                  const SizedBox(width: 28),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => const AddServiceModal(),
          );
        },
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: AppColors.primaryLight),
      ),
    );
  }
}
