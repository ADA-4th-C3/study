//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct HomeView: View {
  @EnvironmentObject var router: Router

  var body: some View {
    BaseView(
      create: { HomeViewModel() }
    ) { viewModel, state in
      VStack {
        Button(action: viewModel.add) {
          Text("Home\n\(state.count)")
        }

        // MARK: Diary
        Button(action: { router.push(.diary) }) {
          Text("Diary View")
        }
        
        // MARK: Todo
        Button(action: { router.push(.todo) }) {
          Text("Todo View")
        }
        
      }
    }
  }
}

#Preview {
  BasePreview {
    HomeView()
  }
}
