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
        ScrollView{
            VStack(alignment: .leading){
                
                Text("종목")
                
                Text("제목")
                MatchingTitleView(matchingViewModel: matchingViewModel)
                    .padding(.bottom, 40)
                
                Text("시간")
                SelectTimeView(matchingViewModel: matchingViewModel)
                    .padding(.bottom, 40)
                
                Text("장소")
                SelectPlaceView(matchingViewModel: matchingViewModel)
                    .padding(.bottom, 40)
                
                Text("인원")
                SelectSizeView(matchingViewModel: matchingViewModel)
                    .padding(.bottom, 40)
                
                Text("자세한 설명")
                MatchingDescriptionView(matchingViewModel: matchingViewModel)
            }
            .padding()
            
            Button(
                action: {
                    matchingListViewModel.addMatching(
                        .init(
                            title: matchingViewModel.title,
                            date: matchingViewModel.day, // 변수명 확인 볼것
                            time: matchingViewModel.time,
                            location: matchingViewModel.location,
                            sportsType: matchingViewModel.sportsType,
                            participants: matchingViewModel.size
                        )
                    )
            }, label: {
                CustomRegularBtn(isRounded: true, text: "참가 신청하기")
            })
        }
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
    
    fileprivate init(matchingViewModel: MatchingViewModel) {
        self.matchingViewModel = matchingViewModel
    }
    
    fileprivate var body: some View {
        DatePicker("", selection: $matchingViewModel.time)
            .labelsHidden()
    }
}

// MARK: - 장소 선택 뷰
private struct SelectPlaceView: View {
    @ObservedObject private var matchingViewModel: MatchingViewModel
    
    fileprivate init(matchingViewModel: MatchingViewModel) {
        self.matchingViewModel = matchingViewModel
    }
    
    fileprivate var body: some View {
        TextField("장소를 입력하세요.", text: $matchingViewModel.location)
    }
}

// MARK: - 인원 선택 뷰
private struct SelectSizeView: View {
    @ObservedObject private var matchingViewModel: MatchingViewModel
    
    fileprivate init(matchingViewModel: MatchingViewModel) {
        self.matchingViewModel = matchingViewModel
    }
    
    fileprivate var body: some View {
        Picker("",selection: $matchingViewModel.size) {
            ForEach(0..<20) {num in
                Text("\(num)")
            }
        }
            
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
