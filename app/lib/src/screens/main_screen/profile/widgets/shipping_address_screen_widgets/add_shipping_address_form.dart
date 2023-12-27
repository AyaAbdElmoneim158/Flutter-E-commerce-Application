import 'package:app/src/core/constance.dart';
import 'package:app/src/core/shareable_components/btns/common_primary_btn.dart';
import 'package:app/src/core/shareable_components/form/common_text_field.dart';
import 'package:app/src/core/utils/app_strings.dart';
import 'package:app/src/core/utils/helper.dart';
import 'package:app/src/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddShippingAddressForm extends StatelessWidget {
  const AddShippingAddressForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Constance.globalPadding),
      child: Form(
        child: Column(
          children: [
            const CommonTextField(
              labelText: AppStrings.fullNameField,
              hintText: AppStrings.fullNameField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            const CommonTextField(
              labelText: AppStrings.addressField,
              hintText: AppStrings.addressField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            const CommonTextField(
              labelText: AppStrings.cityField,
              hintText: AppStrings.cityField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            const CommonTextField(
              labelText: AppStrings.stateField,
              hintText: AppStrings.stateField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            const CommonTextField(
              labelText: AppStrings.zipCodeField,
              hintText: AppStrings.zipCodeField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.012),
            const CommonTextField(
              labelText: AppStrings.countryField,
              hintText: AppStrings.countryField,
            ),
            Helper().hSizeBox(SizeConfig.screenHeight! * 0.064),
            CommonPrimaryBtn(
              btnText: AppStrings.saveAddresses.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
