abstract class EnvVariables {
  static const _disableValidationKey = 'disableValidation';
  static const _mockAuthService = 'mockAuthService';

  // to add a new config and set the default value you can run this --dart-define=variable
  static const _vendorThemeConfiguration = 'vendorThemeConfiguration';
  static const vendorThemeConfiguration = int.fromEnvironment(_vendorThemeConfiguration, defaultValue: 1);

  static const disableValidation =
      bool.fromEnvironment(_disableValidationKey, defaultValue: false);
  static const mockAuthService =
      bool.fromEnvironment(_mockAuthService, defaultValue: false);
}
