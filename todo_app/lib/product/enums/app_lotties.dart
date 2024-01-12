enum AppLotties {
  sleeping('sleeping'),
  ;

  final String value;
  const AppLotties(this.value);

  String get toLottie => 'assets/lotties/lottie_$value.json';
}
