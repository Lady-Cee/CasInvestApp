import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomeBloc extends Cubit<HomeState>{
  HomeBloc(): super(HomeState());

  void updateTabIndex(int newIndex)async{
    emit(state.copyWith(tabindex: newIndex));
  }
  void hideTodoList()async{
    emit(state.copyWith(hideTodo: true));
  }
  void showTodoList()async{
    emit(state.copyWith(hideTodo: false));
  }
}