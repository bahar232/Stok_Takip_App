

extension DoubleExt on double{

  double asFixed(int fractionDigits){
    final value = this;
    final newValue = double.parse(value.toStringAsFixed(fractionDigits));
    return newValue;
  }
}