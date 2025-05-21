//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

import SwiftUI

struct DiaryView: View {
  var body: some View {
    BaseView(
      create: { DiaryViewModel() }
    ) { viewModel, state in
      VStack(spacing: 0) {
        // MARK: Toolbar
        Toolbar(title: "Diary")

        // MARK: TextField
        HStack {
          TextField("Write diary title", text: Binding(
            get: { state.diaryTitle },
            set: viewModel.setDiaryTitle
          ))
          .textFieldStyle(RoundedBorderTextFieldStyle())

          IconButton("plus") {
            viewModel.add()
          }
        }
        .padding(.leading, 16)
        Divider()

        if state.diaryList.isEmpty {
          // MARK: Empty
          Spacer()
          Text("No Diary")
            .foregroundStyle(.gray)
        } else {
          // MARK: Diary List
          ForEach(state.diaryList, id: \.id) { diary in
            HStack(spacing: 0) {
              Text(diary.title)
              Spacer()
              IconButton("trash") {
                viewModel.delete(diary)
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
    DiaryView()
  }
}
