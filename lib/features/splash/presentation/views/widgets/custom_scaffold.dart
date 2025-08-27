import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:merchants_training/features/splash/presentation/views/home/presentation/views/widgets/companyServices_view.dart';
import 'package:merchants_training/features/splash/presentation/views/home/presentation/views/widgets/roomServiceRequest_view.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/welcome_card.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';


class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const CustomScaffold({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: AppColors.primary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: AppColors.primary),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/company.png"),
                      backgroundColor: AppColors.primary,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "أهلا وسهلا بك Isnad",
                      style: AppStyles.textStyleBold11,
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Image.asset("assets/images/home.png", width: 32),
              title: Text('الرئيسية', style: AppStyles.textStyleBold12),
              onTap: () {
                // Action
              },
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset("assets/images/note.png", width: 32),
              title: Text('طلب خدمات الغرفة التجارية', style: AppStyles.textStyleBold12),
              onTap: () {
                Get.to(RoomservicerequestView());
              },
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset("assets/images/category.png", width: 32),
              title: Text('قائمة خدمات الشركة', style: AppStyles.textStyleBold12),
              onTap: () {
                Get.to(CompanyservicesView());
              },
            ),
            const SizedBox(height: 40),
            const Divider(color: AppColors.grey, thickness: 0.5),
            const SizedBox(height: 20),
            ListTile(
              leading: Image.asset("assets/images/logout.png", width: 32),
              title: Text('تسجيل خروج', style: AppStyles.textStyleBold12),
              onTap: () {
                // Action
              },
            ),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(230),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.primary,
          centerTitle: true,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Image.asset(
                            "assets/images/category_icon.png",
                            height: 28,
                          ),
                        ),
                      ),
                      Text(title, style: AppStyles.textStyleBold11),
                      const SizedBox(width: 28),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(child: WelcomeCard(name: "Isnad")),
                ],
              ),
            ),
          ),
        ),
      ),
      body: body,
    );
  }
}
