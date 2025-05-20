//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct BucketView: View {
  var body: some View {
    BaseView(
      create: { BucketViewModel() }
    ) { viewModel, state in
      VStack(spacing: 0) {
        // MARK: Toolbar
        Toolbar(title: "Bucket")

        // MARK: TextField
        HStack {
          TextField("Write diary title", text: Binding(
            get: { state.bucketTitle },
            set: viewModel.setBucketTitle
          ))
          .textFieldStyle(RoundedBorderTextFieldStyle())

          IconButton("plus") {
            viewModel.add()
          }
        }
        .padding(.leading, 16)
        Divider()

        if state.bucketList.isEmpty {
          // MARK: Empty
          Spacer()
          Text("No Bucket")
            .foregroundStyle(.gray)

        } else {
          // MARK: Bucket List

          ForEach(state.bucketList, id: \.id) { bucket in
            HStack(spacing: 0) {
              Text(bucket.title)
              Spacer()
              IconButton("trash") {
                viewModel.delete(bucket)
              }
            }
            .padding(.leading, 16)
          }
        }
        Spacer()
      }
    }
  }
}

#Preview {
  BasePreview {
    BucketView()
  }
}
