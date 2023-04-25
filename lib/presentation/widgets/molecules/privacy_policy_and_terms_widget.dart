import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:water_tracker/generated/assets/assets.gen.dart';
import 'package:water_tracker/generated/locale_keys.g.dart';

class PrivacyPolicyAndTermsWidget extends StatelessWidget {
  const PrivacyPolicyAndTermsWidget({super.key});

  static const paddingPrivacyPolicyTermsWidget = EdgeInsets.all(16.0);
  static const fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    final spaceTextSpan = TextSpan(
      text: ' ',
      style: TextStyle(
        fontSize: fontSize,
        color: Theme.of(context).primaryColor,
      ),
    );
    return Padding(
      padding: paddingPrivacyPolicyTermsWidget,
      child: Text.rich(
        TextSpan(
          text: LocaleKeys.by_signing_in_you_agree_to_our.tr(),
          style: Theme.of(context).textTheme.headline2,
          children: <TextSpan>[
            spaceTextSpan,
            TextSpan(
              text: LocaleKeys.terms.tr(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontWeight: FontWeight.w500),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Theme.of(context).primaryColorLight,
                    builder: (context) => DraggableScrollableSheet(
                      expand: false,
                      minChildSize: 0.32,
                      initialChildSize: 0.9,
                      maxChildSize: 0.9,
                      builder: (
                        BuildContext context,
                        ScrollController scrollController,
                      ) =>
                          FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString(Assets.docs.termsAndConditions),
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<dynamic> snapshot,
                        ) {
                          if (snapshot.hasData) {
                            return Markdown(data: snapshot.data);
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
                      ),
                    ),
                  );
                },
            ),
            spaceTextSpan,
            TextSpan(
              text: LocaleKeys.and.tr(),
              style: Theme.of(context).textTheme.headline2,
            ),
            spaceTextSpan,
            TextSpan(
              text: LocaleKeys.privacy_policy.tr(),
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontWeight: FontWeight.w500),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30)),
                    ),
                    isScrollControlled: true,
                    context: context,
                    backgroundColor: Theme.of(context).primaryColorLight,
                    builder: (context) => DraggableScrollableSheet(
                      expand: false,
                      minChildSize: 0.32,
                      initialChildSize: 0.9,
                      maxChildSize: 0.9,
                      builder: (
                        BuildContext context,
                        ScrollController scrollController,
                      ) =>
                          FutureBuilder(
                        future: DefaultAssetBundle.of(context)
                            .loadString(Assets.docs.privacyPolicy),
                        builder: (
                          BuildContext context,
                          AsyncSnapshot<dynamic> snapshot,
                        ) {
                          if (snapshot.hasData) {
                            return Markdown(data: snapshot.data);
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
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
