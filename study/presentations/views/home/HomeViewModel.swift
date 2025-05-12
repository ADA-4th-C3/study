//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

final class HomeViewModel: BaseViewModel<HomeViewState> {
  init() {
    super.init(state: .init(count: 0))
  }

  func add() {
    emit(state.copy(count: state.count + 1))
  }
}
