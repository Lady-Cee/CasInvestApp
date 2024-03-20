import 'package:equatable/equatable.dart';

class AccountState extends Equatable {
  AccountState({
    this.switchBtn = false,
    this.switchBtnTwo = false,
    this.switchBtnThree = false,
});
  final bool switchBtn;
  final bool switchBtnTwo;
  final bool switchBtnThree;

  AccountState copyWIth({
    bool? switchBtn,
    bool? switchBtnTwo,
    bool? switchBtnThree,
})  {
    return AccountState(
      switchBtn: switchBtn ?? this.switchBtn,
      switchBtnTwo: switchBtnTwo ?? this.switchBtnTwo,
      switchBtnThree: switchBtnThree ?? this.switchBtnThree,
    );
  }

// TODO: implement props
List<Object?> get props => [
  switchBtn,
  switchBtnTwo,
  switchBtnThree,
];
}