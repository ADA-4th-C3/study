//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct Todo {
  let id: UUID
  let title: String
  let deleted: Bool

  init(id: UUID = UUID(), title: String, bool: Bool = false) {
    self.id = id
    self.title = title
    deleted = bool
  }

  func copy(id: UUID? = nil, title: String? = nil, deleted: Bool? = nil) -> Todo {
    return Todo(
      id: id ?? self.id,
      title: title ?? self.title,
      bool: deleted ?? self.deleted
    )
  }
}
