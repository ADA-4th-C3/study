//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

struct BucketViewState {
  let bucketTitle : String
  let bucketList : [Bucket]
  
  func copy(bucketTitle : String? = nil, bucketList: [Bucket]? = nil)->BucketViewState{
    return BucketViewState(
      bucketTitle: bucketTitle ?? self.bucketTitle,
      bucketList: bucketList ?? self.bucketList
    )
  }
}

