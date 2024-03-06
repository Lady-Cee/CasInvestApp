
import "package:equatable/equatable.dart";

class Savings extends Equatable{
  Savings({
    required this.title,
    required this.returns,
    required this.amount,
  });
  final String title;
  final String returns;
  final String amount;

  @override
  List<Object?> get props => [
    title,returns,amount
  ];
}