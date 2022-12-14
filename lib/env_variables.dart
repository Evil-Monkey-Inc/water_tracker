abstract class EnvVariables {
  static const _enableValidationKey = 'enableValidation';

  static const enableValidation = bool.fromEnvironment(_enableValidationKey, defaultValue: true);
}
