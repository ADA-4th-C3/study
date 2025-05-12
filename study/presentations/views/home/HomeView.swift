//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct HomeView: View {
  var body: some View {
    BaseView(
      create: { HomeViewModel() }
    ) { viewModel, state in
      VStack {
        Button(action: viewModel.add) {
          Text("Home\n\(state.count)")
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
