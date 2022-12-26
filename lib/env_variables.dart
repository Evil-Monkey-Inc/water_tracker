abstract class EnvVariables {
  static const _disableValidationKey = 'disableValidation';
  static const _mockAuthService = 'mockAuthService';

  static const disableValidation = bool.fromEnvironment(_disableValidationKey, defaultValue: false);
  static const mockAuthService = bool.fromEnvironment(_mockAuthService, defaultValue: false);
}
