import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/routes.dart';

abstract class AppToastModel {
  final Widget? icon;
  final String message;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isShowIcon;

  AppToastModel({this.icon, required this.message, this.backgroundColor, this.textColor, this.isShowIcon = true});

  Widget get toast;

  Function(FToast fToast) get getFToast;
}

class AppToastSuccessDialog implements AppToastModel {
  @override
  final Widget? icon;
  @override
  final String message;

  @override
  final Color backgroundColor;
  @override
  final Color? textColor;
  @override
  final bool isShowIcon;

  AppToastSuccessDialog({this.icon, required this.message, this.backgroundColor = Colors.black, this.textColor, this.isShowIcon = true}) {
    FToast fToast = FToast();
    fToast.init(rootContext()!);
    fToast.removeCustomToast();
    getFToast(fToast);
  }

  @override
  Function(FToast fToast) get getFToast => (FToast fToast) {
        fToast.showToast(
          child: toast,
          toastDuration: const Duration(milliseconds: 2500),
          gravity: ToastGravity.TOP,
        );
      };

  @override
  Widget get toast => AppToastBodyDialog(
        icon: icon ??
            Icon(
              Icons.check_circle,
              size: 16,
              color: rootContext()!.appColors.success1,
            ),
        isShowIcon: isShowIcon,
        message: message,
        backgroundColor: backgroundColor,
        textColor: textColor,
      );
}

class AppToastFailedDialog implements AppToastModel {
  @override
  final Widget? icon;
  @override
  final String message;
  @override
  final Color backgroundColor;
  @override
  final Color? textColor;

  @override
  final bool isShowIcon;

  AppToastFailedDialog({this.icon, required this.message, this.backgroundColor = Colors.black, this.textColor, this.isShowIcon = true}) {
    FToast fToast = FToast();
    fToast.init(rootContext()!);
    fToast.removeCustomToast();
    getFToast(fToast);
  }

  @override
  Function(FToast fToast) get getFToast => (FToast fToast) {
        fToast.showToast(
          child: toast,
          toastDuration: const Duration(milliseconds: 2500),
          gravity: ToastGravity.TOP,
        );
      };

  @override
  Widget get toast => AppToastBodyDialog(
        icon: icon ??
            Icon(
              Icons.cancel_rounded,
              size: 16,
              color: rootContext()?.appColors.error1,
            ),
        isShowIcon: isShowIcon,
        message: message,
        backgroundColor: backgroundColor,
        textColor: textColor,
      );
}

class AppToastBodyDialog extends StatelessWidget {
  final Widget icon;
  final String message;
  final Color backgroundColor;
  final Color? textColor;
  final bool isShowIcon;

  const AppToastBodyDialog({super.key, required this.icon, required this.message, this.textColor, this.backgroundColor = Colors.black, this.isShowIcon = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: backgroundColor.withOpacity(0.8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            offset: const Offset(0, 2),
            blurRadius: 8,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isShowIcon) ...[
            Stack(alignment: Alignment.center, children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
              ),
              icon
            ]),
            const Gap(8),
          ],
          Text(
            message,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
