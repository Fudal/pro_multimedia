import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pro_multimedia/extensions/context_extension.dart';
import 'package:pro_multimedia/presentation/widgets/custom_button_rounded.dart';
import 'package:pro_multimedia/routing/router.gr.dart';
import 'package:pro_multimedia/style/app_colors.dart';
import 'package:pro_multimedia/style/app_typography.dart';
import 'package:pro_multimedia/style/dimens.dart';

class InfoDialog extends StatelessWidget {
  final String message;
  final String? description;
  final Function()? firstCallback;
  final Function()? secondCallback;
  final String? firstButtonText;
  final String? secondButtonText;
  final dynamic error;

  const InfoDialog({super.key, 
    required this.message,
    this.firstCallback,
    this.firstButtonText,
    this.secondButtonText,
    this.secondCallback,
    this.description,
    this.error,
  });

  Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) => this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Dialog(
    backgroundColor: Colors.transparent,
    child: Material(
      color: AppColors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(Dimens.spacingM))),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Dimens.spacingM, vertical: Dimens.spacingL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Spacer(),
                Expanded(
                  flex: 12,
                  child: Text(
                    message,
                    style: context.typo.headline4,
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child:const Icon(Icons.close),
                  ),
                ),
              ],
            ),
            const SizedBox(height: Dimens.spacingM),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButtonRounded(
                  text: 'OK',
                  externalPadding: const EdgeInsets.all(Dimens.spacingS),
                  onPressed: () {
                    if (firstCallback != null) {
                      firstCallback?.call();
                    }
                    try {
                      Navigator.of(context).pop();
                    } catch (e) {
                      context.router.pushAndPopUntil(
                        DashboardRoute(),
                        predicate: (_) => true,
                      );
                    }
                  },
                ),
                if (secondButtonText != null)
                  TextButton(
                    child: Text(
                      secondButtonText!,
                      style: context.typo.body3.primary_200(),
                    ),
                    onPressed: () {
                      if (secondCallback != null) {
                        secondCallback?.call();
                      }
                      Navigator.of(context).pop();
                    },
                  ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
