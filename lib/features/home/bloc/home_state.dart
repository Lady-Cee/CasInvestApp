import "package:equatable/equatable.dart";

import "../../account/models/user.dart";

class HomeState extends Equatable{
  HomeState({
    this.tabindex = 0,
    this.hideTodo = false,
    this.userModel,
});

  final int tabindex;
  final bool hideTodo;
  final UserModel? userModel;

  HomeState copyWith({
    int? tabindex,
    bool? hideTodo,
    UserModel? userModel,
})  {
    return HomeState(
      tabindex: tabindex ?? this.tabindex,
      hideTodo: hideTodo ?? this.hideTodo,
      userModel: userModel ?? this.userModel,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    tabindex,
    hideTodo,
    userModel,
  ];

}