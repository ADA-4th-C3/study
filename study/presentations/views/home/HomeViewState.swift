//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

struct HomeViewState {
  let count: Int

  func copy(count: Int? = nil) -> HomeViewState {
    return HomeViewState(count: count ?? self.count)
  }
}
