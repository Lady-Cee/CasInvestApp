import 'package:cash_invest/features/account/bloc/account_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountBloc extends Cubit<AccountState>{
  AccountBloc(): super(AccountState());

  void switchBtnOn() async{
    emit(state.copyWIth(switchBtn: true));

  }
  void switchBtnOnTwo() async{
    emit(state.copyWIth(switchBtnTwo: true));
  }
  void switchBtnOnThree() async{
    emit(state.copyWIth(switchBtnThree: true));
  }
  void switchBtnOff() async{
    emit(state.copyWIth(switchBtn: false));
  }

  void switchBtnOffTwo() async{
  emit(state.copyWIth(switchBtnTwo: false));
}
  void switchBtnOffThree() async{
  emit(state.copyWIth(switchBtnThree: false));
}


}