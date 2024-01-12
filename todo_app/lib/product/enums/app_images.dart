enum AppImages {
  checkmark('checkmark'),
  doIt('do_it'),
  zzz('zzz'),
  ;

  final String value;
  const AppImages(this.value);

  String get toImage => 'assets/images/ic_$value.png';
}
