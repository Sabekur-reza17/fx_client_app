import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fx_client_app/core/base_hook_consumer_widget.dart';
import 'package:fx_client_app/core/vm_provider.dart';
import 'package:fx_client_app/components/primary_button.dart';

import 'update_password_event.dart';
import 'update_password_state.dart';
import 'update_password_view_model.dart';

@RoutePage()
class UpdatePasswordScreen
    extends BaseHookConsumerWidget<UpdatePasswordState, UpdatePasswordViewModel> {
  const UpdatePasswordScreen({super.key});

  @override
  NotifierProvider<UpdatePasswordViewModel, UpdatePasswordState> provider() =>
      VmProvider.updatePasswordVMP;

  @override
  Widget buildChild(
    BuildContext context,
    UpdatePasswordViewModel vm,
    UpdatePasswordState state,
    WidgetRef ref,
  ) {
    final oldPasswordController = useTextEditingController();
    final newPasswordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    ref.listen<UpdatePasswordState>(provider(), (previous, next) {
      if (next.isSuccess && (previous == null || !previous.isSuccess)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password updated successfully'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pop();
      } else if (next.error != null && (previous == null || previous.error != next.error)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error!),
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
        );
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Update Password')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: oldPasswordController,
                decoration: const InputDecoration(
                  labelText: 'Old Password',
                  hintText: 'Enter your old password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your old password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: newPasswordController,
                decoration: const InputDecoration(
                  labelText: 'New Password',
                  hintText: 'Enter your new password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your new password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                  labelText: 'Confirm New Password',
                  hintText: 'Confirm your new password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: (value) {
                  if (value != newPasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              PrimaryButton(
                text: 'Update Password',
                isLoading: state.isSubmitting,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    vm.onEvent(SubmitUpdatePassword(
                      oldPassword: oldPasswordController.text,
                      newPassword: newPasswordController.text,
                    ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
