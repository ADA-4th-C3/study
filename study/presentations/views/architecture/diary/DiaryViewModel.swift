//  Copyright © 2025 ADA 4th Challenge3 Team1. All rights reserved.

final class DiaryViewModel: BaseViewModel<DiaryViewState> {
  init() {
    super.init(state: .init(
      diaryTitle: "",
      diaryList: []
    ))
  }

  func setDiaryTitle(_ diaryTitle: String) {
    emit(state.copy(diaryTitle: diaryTitle))
  }

  func add() {
    if state.diaryTitle.isEmpty { return }
    emit(state.copy(
      diaryTitle: "",
      diaryList: state.diaryList + [Diary(title: state.diaryTitle)]
    ))
  }

  func delete(_ diary: Diary) {
    emit(state.copy(
      diaryList: state.diaryList.filter { $0.id != diary.id }
    ))
  }
}
