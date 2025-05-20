//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.
import SwiftUI

struct Bucket {
  let id: UUID
  let title: String

  init(id: UUID = UUID(), title: String) {
    self.id = id
    self.title = title
  }
}
