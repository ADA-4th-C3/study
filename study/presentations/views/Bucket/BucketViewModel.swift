//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

final class BucketViewModel: BaseViewModel<BucketViewState> {
  init() {
    super.init(state: .init(
      bucketTitle: "",
      bucketList: []
    ))
  }
  
  func setBucketTitle(_ bucketTitle: String) {
    emit(state.copy(bucketTitle: bucketTitle))
  }

  func add() {
    if state.bucketTitle.isEmpty { return }
    emit(state.copy(
      bucketTitle: "",
      bucketList: state.bucketList + [Bucket(title: state.bucketTitle)]
    ))
  }

  func delete(_ bucket: Bucket) {
    emit(state.copy(
      bucketList: state.bucketList.filter { $0.id != bucket.id })
    )
  }
}
