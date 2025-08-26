import 'package:flutter/material.dart';
import 'package:merchants_training/features/splash/presentation/views/home/presentation/views/widgets/authorizedSignatories_view.dart';
import 'package:merchants_training/features/splash/presentation/views/home/presentation/views/widgets/branches_view.dart';
import 'package:merchants_training/features/splash/presentation/views/home/presentation/views/widgets/companies_view.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/authorizedSignatories_custom_card.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/branches_custom_card.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/custom_scaffold.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/partners_custom_card.dart';
import 'package:merchants_training/features/splash/presentation/views/widgets/custom_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        title: 'الرئيسية',
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomSection(title: "الشركاء", destination: CompaniesView()),
                const SizedBox(height: 20),
                PartnersCustomCard(
                  partnerName: "محمد أحمد",
                  position: "رئيس مجلس الادارة",
                  sharePercentage: "50%",
                ),
                const SizedBox(height: 30),
                CustomSection(title: "الفروع", destination: BranchesView()),
                const SizedBox(height: 20),
                BranchesCustomCard(
                  companyName: "Top Tech",
                  status: "نشطة",
                  managerName: "محمد توفيق",
                ),
                const SizedBox(height: 30),
                CustomSection(
                  title: "المفوضون بالتوقيع",
                  destination: AuthorizedsignatoriesView(),
                ),
                const SizedBox(height: 20),
                AuthorizedsignatoriesCustomCard(
                  branchManagerName: "بهاء الدين قاسم",
                  validity: "قانوني",
                  signatureValidity: "بهاء الدين قاسم",
                ),
              ],
            ),
          ),
        ),
    );
    
  }
}
