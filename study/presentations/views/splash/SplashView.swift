//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct SplashView: View {
  @EnvironmentObject var router: Router

  var body: some View {
    BaseView(
      create: { SplashViewModel() }
    ) { viewModel, state in
      Button(action: {
        router.setRoot(.home)
      }) {
        VStack {
          if state.loaded {
            Text("Splash\nGo Home")
          } else {
            ProgressView()
              .progressViewStyle(CircularProgressViewStyle())
              .tint(.blue)
          }
        }
        .onAppear {
          DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            viewModel.onLoaded()
          }
        }
      }
      .disabled(!state.loaded)
    }
  }
}

#Preview {
  BasePreview {
    SplashView()
  }
}
