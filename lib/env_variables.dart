abstract class EnvVariables {
  static const _disableValidationKey = 'disableValidation';

  static const disableValidation = bool.fromEnvironment(_disableValidationKey, defaultValue: false);
}
