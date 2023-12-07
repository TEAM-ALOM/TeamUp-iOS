//
//  MatchingView.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/07.
//

import SwiftUI

// MARK: - 매칭리스트 뷰
struct MatchingListView: View {
    @EnvironmentObject private var matchingListViewModel: MatchingListViewModel
    @EnvironmentObject private var pathModel: PathModel
    
    var body: some View {
        ZStack{
            
            Color.customBackgroundColor
                .ignoresSafeArea()
            
            VStack(alignment: .center){
                if matchingListViewModel.matchings.isEmpty {
                    Text("새로운 매칭을 만들어주세요!")
                } else {
                    MatchingListContentView()
                }
            }
            VStack{
                Spacer()
                
                CreateMatchingBtn()
                
            }
        }
    }
}




// MARK: - 매칭리스트 컨텐츠 뷰
private struct MatchingListContentView: View {
    @EnvironmentObject private var matchingListViewModel: MatchingListViewModel
    fileprivate var body: some View {
        ScrollView{
            
            VStack(spacing: 5){
                ForEach(matchingListViewModel.matchings, id: \.self)
                { matching in
                    MatchingCellView(matching: matching)
                }
            }
        }
    }
}

// MARK: - 매칭셀뷰
private struct MatchingCellView: View {
    @EnvironmentObject private var matchingListViewModel: MatchingListViewModel
    
    fileprivate var matching: Matching
    
    fileprivate init(
        matching: Matching
    ) {
        self.matching = matching
    }
    
    fileprivate var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .cornerRadius(25)
                .shadow(color: .black.opacity(0.25), radius: 2, y: 4)
            VStack {
                Text(matching.title)
                    .font(.pretendard(.Medium, size: 20))
                Text(matching.location)
                    .font(.pretendard(.Regular, size: 14))
            }
        }
    }
}

// MARK: - 매칭생성 버튼
private struct CreateMatchingBtn: View {
    @EnvironmentObject private var pathModel: PathModel
    
    fileprivate var body: some View {
        Button(
            action: {
                pathModel.paths.append(.MatchingView)
            },
            label: {
                ZStack {
                    Rectangle()
                        .frame(width: 120, height: 50)
                        .foregroundStyle(Color.customCreateMatchingBtnColor)
                        .cornerRadius(30)
                        .shadow(color: .black.opacity(0.25), radius: 4, y: 3)
                    
                    HStack(spacing: 2){
                        Image("Plus")
                            .frame(width: 25, height: 25)
                        Text("매칭생성")
                            .font(.pretendard(.Bold, size: 20))
                            .foregroundColor(.white)
                    } //: HSTACK
                }//: ZSTACK
            }
        ) //: BUTTON
    }
}

// MARK: - PREVIEWS
struct Previews_MatchingListView: PreviewProvider {
    static var previews: some View {
        MatchingListView()
            .environmentObject(MatchingListViewModel())
            .environmentObject(PathModel())
    }
}
