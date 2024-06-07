// import 'package:flutter/material.dart';
//
// import '../../login/screens/login_screen.dart';
//
// class ForgotPasswordScreen extends StatelessWidget {
//   const ForgotPasswordScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(AppSizes.defaultSpace),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               /// Header
//               Text(
//                 AppTexts.forgetPasswordTitle,
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               const SizedBox(height: AppSizes.spaceBtwItems),
//               Text(
//                 AppTexts.forgetPasswordSubTitle,
//                 style: Theme.of(context).textTheme.labelMedium,
//               ),
//               const SizedBox(height: AppSizes.spaceBtwSections),
//
//               /// TextField
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: AppTexts.email,
//                   prefixIcon: Icon(Iconsax.direct_right),
//                 ),
//               ),
//               const SizedBox(
//                 height: AppSizes.spaceBtwSections,
//               ),
//
//               /// Submit Button
//               SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     child: const Text(AppTexts.submit),
//                     onPressed: () {
//                       Get.off(
//                         () => VerifyEmailView(
//                           title: AppTexts.changeYourPasswordTitle,
//                           subTitle: AppTexts.changeYourPasswordSubTitle,
//                           continuePressed: () {
//                             Get.offAll(
//                               () => const LoginScreen(),
//                             );
//                           },
//                           resendPressed: () {},
//                         ),
//                       );
//                     },
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
