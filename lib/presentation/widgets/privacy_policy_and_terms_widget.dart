import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class PrivacyPolicyAndTermsWidget extends StatelessWidget {
  const PrivacyPolicyAndTermsWidget({Key? key}) : super(key: key);

  static const paddingPrivacyPolicyTermsWidget = EdgeInsets.all(16.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingPrivacyPolicyTermsWidget,
      child: Text.rich(
        TextSpan(
          text: LocaleKeys.by_signing_in_you_agree_to_our.tr(),
          style: CustomTheme().restText,
          children: <TextSpan>[
            CustomTheme.spaceTextSpan,
            TextSpan(
              text: LocaleKeys.terms.tr(),
              style: CustomTheme().termsProperty,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: CustomTheme.privacyPolicyBackground,
                    builder: (context) => DraggableScrollableSheet(
                      expand: false,
                      minChildSize: 0.32,
                      initialChildSize: 0.9,
                      maxChildSize: 0.9,
                      builder: (BuildContext context, ScrollController scrollController) => FutureBuilder(
                        future: DefaultAssetBundle.of(context).loadString(Assets.docs.termsAndConditions),
                        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                          if (snapshot.hasData) {
                            return Markdown(data: snapshot.data);
                          } else {
                            return const Center(child: CircularProgressIndicator());
                          }
                        },
                      ),
                    ),
                  );
                },
            ),
            CustomTheme.spaceTextSpan,
            TextSpan(
              text: LocaleKeys.and.tr(),
              style: CustomTheme().privacyProperty,
            ),
            CustomTheme.spaceTextSpan,
            TextSpan(
              text: LocaleKeys.privacy_policy.tr(),
              style: CustomTheme().privacyPolicyTextProperty,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: CustomTheme.privacyPolicyBackground,
                    builder: (context) => DraggableScrollableSheet(
                      expand: false,
                      minChildSize: 0.32,
                      initialChildSize: 0.9,
                      maxChildSize: 0.9,
                      builder: (BuildContext context, ScrollController scrollController) => FutureBuilder(
                        future: DefaultAssetBundle.of(context).loadString(Assets.docs.privacyPolicy),
                        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                          if (snapshot.hasData) {
                            return Markdown(data: snapshot.data);
                          } else {
                            return const Center(child: CircularProgressIndicator());
                          }
                        },
                      ),
                    ),
                  );
                },
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
