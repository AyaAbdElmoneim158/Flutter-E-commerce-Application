import 'package:app/src/core/constance.dart';
import 'package:app/src/core/helper/firestore_helper.dart';
import 'package:app/src/core/route/routes.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/theme/app_theme.dart';
import 'package:app/src/core/utils/asset_manager.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:app/src/core/utils/styles.dart';
import 'package:app/src/features/auth/cubit/auth_cubit.dart';
import 'package:app/src/features/home/model/product_model.dart';
import 'package:app/src/features/profile/model/order_model.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            //!-> |>
            String uid = "89StFOZVKEXG3jJ5Ad8V3iII3mQ2";
            var fireStore = FirestoreHelper.instance;
            String documentIdFromLocalData() =>
                DateTime.now().toIso8601String();

            fireStore
                .setData(
              path: "Products/${documentIdFromLocalData()}",
              data: ProductModel.dummyClothProducts[2].toJson(),
            )
                .then((value) {
              debugPrint("value: ");
            }).catchError((err) {
              debugPrint("error: $err");
            });
          },
          child: const Icon(Icons.add)),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Stack(
          children: [
            Image.asset(
              ImageAssets.splash2Image,
              fit: BoxFit.cover,
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
            ),
            Container(
              height: SizeConfig.screenHeight,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                boxShadow: [Styles().getSplashBoxShadow()],
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: Constance.globalPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Step into the World of Stylish Attire with Fashion Garb.",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: Styles().getHeadline2TextStyle(
                        color: AppTheme.getColor(
                            ColorType.white, Constance.isLight),
                      ),
                    ),
                    Helper().hSizeBox(SizeConfig.screenHeight! * 0.016),
                    BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                      if (state is AuthStateSuccessState) {
                        /*! state.authStateStream.listen((User? user) {
                          if (user == null) {
                            debugPrint('User is currently signed out!');
                            Navigator.pushReplacementNamed(
                                context, Routes.loginRoute);
                          } else {
                            debugPrint('User is signed in!');
                            Navigator.pushReplacementNamed(
                                context, Routes.mainRoute);
                          }
                        });
                      */
                      }
                      if (state is LoginUserErrorState) {
                        Helper().showSnakeBar(context, state.error);
                      }
                    }, builder: (context, state) {
                      var cubit = AuthCubit.get(context); //

                      return CommonPrimaryBtn(
                        btnText: (state is AuthStateLoadingState)
                            ? "Loading..."
                            : "Get Started".toUpperCase(),
                        onTap: () async {
                          await cubit.authState();
                          debugPrint("You are Uid: ${cubit.uid}");
                        },
                      );
                    })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
