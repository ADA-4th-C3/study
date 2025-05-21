//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct PrototypeSampleView: View {
  var body: some View {
    BaseView(
      create: { PrototypeSampleViewModel() }
    ) { _, _ in
      VStack {
        Toolbar(title: "G2 - Prototype Sample")
        Spacer()
      }
    }
  }
}

#Preview {
  BasePreview {
    PrototypeSampleView()
  }
}
