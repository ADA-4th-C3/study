//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct Todo {
  let id: UUID
  let title: String
  let bool: Bool
  
  init(id: UUID = UUID(), title: String, bool: Bool = false) {
    self.id = id
    self.title = title
    self.bool = bool
  }
}
