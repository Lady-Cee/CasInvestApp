import 'package:cash_invest/features/account/models/user.dart';
import 'package:cash_invest/features/account/repository/account_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeBloc extends Cubit<HomeState>{
  HomeBloc(): super(HomeState());

  AccountRepository accountRepository = AccountRepository();

  void updateTabIndex(int newIndex)async{
    emit(state.copyWith(tabindex: newIndex));
  }
  void hideTodoList()async{
    emit(state.copyWith(hideTodo: true));
  }
  void showTodoList()async{
    emit(state.copyWith(hideTodo: false));
  }

  void loadUserDetails()async {
    try {
      UserModel? userModel = await accountRepository.getUserDetails();
      if (userModel != null) {
        emit(state.copyWith(userModel: userModel));
      }
    }catch (e){
      print(e);
    }
    }
  }

