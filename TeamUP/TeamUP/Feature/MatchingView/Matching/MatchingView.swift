//
//  MatchingView.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import SwiftUI

struct MatchingView: View {
    @EnvironmentObject private var pathModel: PathModel
    @EnvironmentObject private var matchingListViewModel: MatchingListViewModel
    @StateObject private var matchingViewModel = MatchingViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("제목")
            MatchingTitleView(matchingViewModel: matchingViewModel)
                .padding(.bottom, 40)
            
            Text("시간")
            
            Text("장소")
            
            Text("인원")
            
            Text("자세한 설명")
            MatchingDescriptionView(matchingViewModel: matchingViewModel)
        }
        .padding()
    }
}

// MARK: - 매칭생성 타이틀 뷰 (제목 입력 뷰)
private struct MatchingTitleView: View {
    @ObservedObject private var matchingViewModel: MatchingViewModel
    
    fileprivate init(matchingViewModel: MatchingViewModel) {
        self.matchingViewModel = matchingViewModel
    }
    
    fileprivate var body: some View {
        TextField("제목을 입력하세요.", text: $matchingViewModel.title)
    }
}

// MARK: - 시간 선택 뷰
private struct SelectTimeView: View {
    @ObservedObject private var matchingViewModel: MatchingViewModel
    
    fileprivate var body: some View {
        Text("시간")
    }
}

// MARK: - 인원 선택 뷰
private struct SelectSizeView: View {
    @ObservedObject private var matchingViewModel: MatchingViewModel
    
    fileprivate var body: some View {
        Text("인원")
    }
}


// MARK: - 디테일 글 작성 뷰
private struct MatchingDescriptionView: View {
    @ObservedObject private var matchingViewModel: MatchingViewModel
    
    fileprivate init(matchingViewModel: MatchingViewModel) {
        self.matchingViewModel = matchingViewModel
    }
    
    fileprivate var body: some View {
        TextField("자세한 설명을 입력하세요.", text: $matchingViewModel.description)
            .padding()
            .multilineTextAlignment(.leading)
            .frame(height: 100)
            .border(Color.customGray01, width: 1)
    }
}

// MARK: - PREVIEW
struct Previews_MatchingView: PreviewProvider {
    static var previews: some View{
        MatchingView()
    }
}
