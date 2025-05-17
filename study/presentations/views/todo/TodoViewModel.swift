//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.


final class TodoViewModel: BaseViewModel<TodoViewState> {
  init() {
    super.init(state: .init(
      todoTitle: "",
      todoList: []
    ))
  }
  
  func setTodoTitle(_ todoTitle: String) {
    emit(state.copy(todoTitle: todoTitle))
  }
  
  func add() {
    if state.todoTitle.isEmpty { return }
    emit(state.copy(
      todoTitle: "",
      todoList: state.todoList + [Todo(title: state.todoTitle, bool: false)]
    ))
  }
  
  func delete(_ todo: Todo) {
    emit(state.copy(
      todoList: state.todoList.filter { $0.id != todo.id }
    ))
  }
  
  func toggleTodo(_ todo: Todo) {
    let updatedList = state.todoList.map { item in
      if item.id == todo.id {
        return Todo(id: item.id, title: item.title, bool: !item.bool)
      }
      return item
    }
    
    emit(state.copy(todoList: updatedList))
  }
  
}
