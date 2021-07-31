import 'package:equatable/equatable.dart';

class BasicItemStats extends Equatable {
  final int historicalValue;
  final int marketValue;
  final int minBuyout;
  final int nbAuctions;
  final int quantity;

  //TODO : CTOR required
  BasicItemStats({
      this.historicalValue,
      this.marketValue,
      this.minBuyout,
      this.nbAuctions,
      this.quantity});

  @override
  List<Object> get props => [historicalValue,marketValue,minBuyout,nbAuctions,
    quantity];
}