import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


import 'package:fx_client_app/components/phone_number_field.dart';
import 'package:fx_client_app/components/primary_button.dart';
import 'package:fx_client_app/components/standard_text_field.dart';
import 'package:fx_client_app/core/app_colors.dart';
import 'package:fx_client_app/core/app_router.gr.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/password_validator.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:fx_client_app/utilities/extensions/context_extensions.dart';

import 'login_state.dart';
import 'login_view_model.dart';
import 'login_event.dart';

@RoutePage()
class LoginScreen extends BaseHookConsumerWidget<LoginState, LoginViewModel> {
  const LoginScreen({super.key});

  @override
  NotifierProvider<LoginViewModel, LoginState> provider() =>
      VmProvider.loginVMP;

  @override
  Widget buildChild(
    BuildContext context,
    LoginViewModel vm,
    LoginState state,
    WidgetRef ref,
  ) {
    final phoneNumberController = useTextEditingController();
    final passwordController = useTextEditingController();

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (state.rememberMe) {
          phoneNumberController.text = state.phoneNumber;
          passwordController.text = state.password;
        }
      });
      return null;
    }, [state.rememberMe]);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (state.isLoggedIn) {
          context.router.replaceAll([MainRoute()]);
        }
      });
      return null;
    }, [state.isLoggedIn]);

    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      // Theme red color placeholder
      body: Stack(
        children: [
          // Background Gradient & Elements
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.primary,
                  Theme.of(context).colorScheme.secondary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            child: SafeArea(
              child: Column(
                children: [
                  // Top right info icon
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                      child: Icon(
                        Icons.info_outline,
                        color: context.colorScheme.onPrimary,
                        size: 24,
                      ),
                    ),
                  ),
                  const Gap(20),
                  Text(
                    context.locale.appName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Sheet Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24.0,
                    vertical: 40.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        context.locale.welcomeBack,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: context.colorScheme.onSurface,
                        ),
                      ),
                      const Gap(12),
                      Text(
                        context.locale.getBackLearning,
                        style: TextStyle(
                          fontSize: 15,
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const Gap(40),

                      PhoneNumberField(
                        value: state.phoneNumber,
                        label: context.locale.phoneNumber,
                        hint: context.locale.enterPhoneNumber,
                        controller: phoneNumberController,
                        errorText: state.phoneError?.asString(context),
                        onChanged: (v) =>
                            vm.onEvent(OnPhoneNumberChanged(phoneNumber: v)),
                        onCountryTap: () {},
                        suffix: state.isPhoneValid
                            ? Icon(
                                Icons.check_circle_outline,
                                color: AppColors.greenColor,
                                size: 22,
                              )
                            : null,
                      ),
                      Gap(20),

                      StandardTextField(
                        label: context.locale.password,
                        hint: context.locale.enterPassword,
                        value: state.password,
                        obscureText: !state.isPasswordVisible,
                        inputFormatters: PasswordValidator.inputFormatters,
                        onChanged: (v) =>
                            vm.onEvent(OnPasswordChanged(password: v)),
                        errorText: state.error?.asString(context),
                        suffixIcon: IconButton(
                          icon: Icon(
                            state.isPasswordVisible
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: context.colorScheme.onSurfaceVariant,
                          ),
                          onPressed: () {
                            vm.onEvent(OnTogglePasswordVisibility());
                          },
                        ),
                      ),
                      const Gap(16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: Checkbox(
                                  value: state.rememberMe,
                                  onChanged: (v) {
                                    if (v != null) {
                                      vm.onEvent(OnRememberMeToggled(value: v));
                                    }
                                  },
                                  activeColor: AppColors.primaryColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  side: BorderSide(
                                    color: context.colorScheme.outlineVariant,
                                  ),
                                ),
                              ),
                              const Gap(8),
                              Text(
                                context.locale.rememberMe,
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: context.colorScheme.onSurface,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              context.locale.forgotPassword,
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: context.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(40),

                      PrimaryButton(
                        text: context.locale.login,
                        isLoading: state.isLoading,
                        onPressed: () {
                          vm.onEvent(OnLoginPressed());
                        },
                      ),
                      const Gap(30),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            context.locale.dontHaveAccount,
                            style: TextStyle(
                              color: context.colorScheme.onSurfaceVariant,
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              context.locale.createAccount,
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(30),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          context.locale.setPassword,
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
