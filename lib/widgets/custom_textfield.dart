

import 'package:flutter/material.dart';
import 'package:montechnicien/constants/color.dart';

class CustomTextfield extends StatefulWidget {
  CustomTextfield({
    super.key,
    required this.controller,
    this.textInputType = TextInputType.text,
    required this.hintText,
    this.isPassword = false,
    this.selected = false,
    this.codeKey = 1,
    this.password = "",
    this.isSuffix = false,
    this.readOnly = false,
  });

  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final int codeKey;
  final String password;
  final bool isSuffix;
  final bool readOnly;

  bool isPassword;
  bool selected;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  ValueNotifier<bool> notiferValidated = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder<bool>(
        valueListenable: notiferValidated,
        builder: (context, value, child) {
          return Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: value
                        ? BorderSide.none
                        : const BorderSide(color: textFieldBorder))),
            child: TextFormField(
              style: TextStyle(
                  color: textBlack,
                  ),
              readOnly: widget.readOnly,
              maxLines: 1,
              controller: widget.controller,
              obscureText: widget.isPassword
                  ? !widget.selected
                      ? true
                      : false
                  : false,
              keyboardType: widget.textInputType,
              decoration: InputDecoration(
              
                hintText: widget.hintText,
                hintStyle:
                    const TextStyle(color: textGrey, ),
                filled: true,
                fillColor:  textFieldBackground,
                focusedBorder: OutlineInputBorder(
                  // borderSide: themeProvider
                  //     ? const BorderSide(color: textWhite)
                  //     : BorderSide.none,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      width: 0.2,
                      color:  textFieldBorder),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: () {
                          widget.selected = !widget.selected;
                          setState(() {});
                        },
                        icon: widget.selected
                            ? const Icon(
                                Icons.visibility_off_outlined,
                                color: blueLight,
                              )
                            : const Icon(
                                Icons.visibility_outlined,
                                color: blueLight,
                              ))
                    : null,
                errorBorder: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.red), // Couleur de la bordure
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: textFieldBorder),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              validator: (val) {
                switch (widget.codeKey) {
                  case 1:
                    if (val!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(val)) {
                      notiferValidated.value = true;
                      return "Please enter a correct Full Name";
                    } else {
                      return null;
                    }

                  case 2:
                    if (val!.isEmpty ||
                        !RegExp(r'^[\w\.-]+@[\w\.-]+\.\w+$').hasMatch(val)) {
                      notiferValidated.value = true;

                      return "Please enter a correct Email Adress";
                    } else {
                      return null;
                    }

                  case 3:
                    if (val!.isEmpty || !RegExp(r'^\d+$').hasMatch(val)) {
                      notiferValidated.value = true;

                      return "Please enter a correct phone number";
                    } else {
                      return null;
                    }

                  case 4:
                    if (val!.isEmpty || !RegExp(r'.*').hasMatch(val)) {
                      notiferValidated.value = true;

                      return "Please enter a correct password";
                    } else if (val.length < 8) {
                      return "Please enter at least 8 characters";
                    } else {
                      return null;
                    }
                  case 5:
                    if (val != widget.password) {
                      notiferValidated.value = true;

                      return "Confirmation password incorrect";
                    } else {
                      return null;
                    }

                  case 6:
                    if (val!.isEmpty || !RegExp(r'^\d+$').hasMatch(val)) {
                      notiferValidated.value = true;

                      return "Please enter a  duration";
                    } else {
                      return null;
                    }
                  default:
                }
                return null;
              },
            ),
          );
        });
  }
}
