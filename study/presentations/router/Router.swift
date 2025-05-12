//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

final class Router: BaseViewModel<RouterViewState> {
  init() {
    super.init(state: RouterViewState(
      rootPage: .splash,
      subPages: []
    ))
  }

  func setRoot(_ rootPage: RootPage) {
    withAnimation(.easeInOut(duration: 0.5)) {
      emit(state.copy(
        rootPage: rootPage,
        subPages: []
      ))
    }
  }

  func setSubPages(_ subPages: [SubPage]) {
    emit(state.copy(
      subPages: subPages
    ))
  }

  func push(_ subPage: SubPage) {
    emit(state.copy(
      subPages: state.subPages + [subPage]
    ))
  }

  func pop() {
    emit(state.copy(
      subPages: state.subPages.dropLast()
    ))
  }
}
