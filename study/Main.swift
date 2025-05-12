//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

@main
struct Main: App {
  @StateObject var router = Router()

  var body: some Scene {
    WindowGroup {
      RouterView()
    }
    .environmentObject(router)
  }
}
