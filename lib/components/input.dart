import 'package:flutter/material.dart';

class TInput extends StatelessWidget {
  final String inputHint;
  final IconData inputIcon;
  final String inputLabel;
  final TextEditingController inputControle;
  final TextInputType inputTeclado;
  final bool inputSenha;
  final bool inputDesbloqueado;

  const TInput(
      {Key key,
      this.inputHint,
      this.inputIcon,
      this.inputLabel,
      this.inputControle,
      this.inputTeclado,
      this.inputSenha,
      this.inputDesbloqueado = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      enabled: inputDesbloqueado,
      keyboardType: inputTeclado,
      obscureText: inputSenha,
      controller: inputControle,
      autofocus: false,
      decoration: InputDecoration(
        hintText: inputHint,
        labelText: inputLabel,
        border: InputBorder.none,
        prefixIcon: Icon(
          inputIcon,
          color: Theme.of(context).accentColor,
        ),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }
}
