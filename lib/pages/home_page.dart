import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tgv_mobile/blocs/authen/authen_bloc.dart';
import 'package:tgv_mobile/widgets/app_primary_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _txtPhoneNoController = TextEditingController(text: '0876543212');
  final _txtPasswordController = TextEditingController(text: '1231231234');

  Text _showStatusText(AuthenState state) {
    if (state is AuthenErrorState) {
      return Text((state).error.message,
          style: TextStyle(color: Colors.red.withOpacity(0.8)));
    } else if (state is AuthenSuccessState) {
      return Text('Success',
          style: TextStyle(color: Colors.green.withOpacity(0.8)));
    }
    return const Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        resizeToAvoidBottomInset: false,
        body: BlocBuilder<AuthenBloc, AuthenState>(builder: (context, state) {
          return Stack(
            children: [
              Center(
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextField(
                            controller: _txtPhoneNoController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Phone Number',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextField(
                            obscureText: true,
                            controller: _txtPasswordController,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Password',
                            ),
                          ),
                        ),
                        AppPrimaryButton(
                            onPressed: () => context.read<AuthenBloc>().add(
                                FetchAuthen(
                                    phoneNo: _txtPhoneNoController.text,
                                    password: _txtPasswordController.text)),
                            title: 'Login'),
                        Padding(
                            padding: const EdgeInsets.all(15),
                            child: _showStatusText(state)),
                      ],
                    )),
              ),
              state is AuthenLoadingState
                  ? Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.grey.withOpacity(0.5),
                      child: const Center(child: CircularProgressIndicator()),
                    )
                  : Container(),
            ],
          );
        }) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
