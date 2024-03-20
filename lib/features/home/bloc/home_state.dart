import "package:equatable/equatable.dart";

class HomeState extends Equatable{
  HomeState({
    this.tabindex = 0,
    this.hideTodo = false,
});

  final int tabindex;
  final bool hideTodo;

  HomeState copyWith({
    int? tabindex,
    bool? hideTodo,
})  {
    return HomeState(
      tabindex: tabindex ?? this.tabindex,
      hideTodo: hideTodo ?? this.hideTodo,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    tabindex,
    hideTodo
  ];





}