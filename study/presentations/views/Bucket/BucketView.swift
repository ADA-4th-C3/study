//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct BucketView: View {
  var body: some View {

    BaseView(
      create: { BucketViewModel() }
    ) { _, _ in
      VStack(spacing: 0) {}
    }
  }
}

#Preview {
  BucketView()
}
