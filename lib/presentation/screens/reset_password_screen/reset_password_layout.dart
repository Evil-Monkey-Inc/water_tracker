import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_bloc.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_event.dart';
import 'package:water_tracker/presentation/screens/reset_password_screen/bloc/reset_password_state.dart';
import 'package:water_tracker/presentation/widgets/molecules/custom_button.dart';
import 'package:water_tracker/presentation/widgets/molecules/input_field_widget.dart';

class ResetPasswordLayout extends StatefulWidget {
  const ResetPasswordLayout({super.key});

  @override
  State<ResetPasswordLayout> createState() => _ResetPasswordLayoutState();
}

class _ResetPasswordLayoutState extends State<ResetPasswordLayout> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
        listener: (context, state) {
         if(state is ErrorResetPasswordState){
           // TODO(Benik): Implement alert with exception
         }
         if(state is SuccessfullyResetPasswordState){
           // TODO(Benik): Do something if state is SuccessfullyResetPasswordState
         }
        },
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(height: 220,),
              const Center(
                child: Text('Reset Password'),
              ),
              InputFieldWidget(
                labelText: 'Enter email',
                //  validator: FormValidators.emailValidator,
                controller: _emailController,
              ),
              const SizedBox(height: 24.0,),
              CustomButton(
                text: 'reset password',
                onPressed: () {
                  context.read<ResetPasswordBloc>().add(
                        ForgotPasswordEvent(_emailController.text),
                      );
                },
                buttonColor: Colors.blue,
                textButtonColor: Colors.black,
              )
            ],
          );
        },
      ),
    );
  }
}
