//
//  MatchingDetailView.swift
//  TeamUP
//
//  Created by 은서우 on 2023/12/25.
//

import SwiftUI

struct MatchingDetailView: View {
    @EnvironmentObject private var matchingViewModel: MatchingViewModel
    @EnvironmentObject private var matchingListViewModel: MatchingListViewModel
    @EnvironmentObject private var pathModel: PathModel
    
    // MARK: - Main
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    Image("CoverImage 1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.size.width, height: 300)
                    
                    VStack(alignment: .leading) {
                        
                        HStack{
                            sportsTypeBadge()
                            
                            Text(matchingViewModel.title)
                                .font(.pretendard(.Medium, size: 32))
                            
                        }
                        .padding(.horizontal, 10)
                        
                        Dividebar()
                        
                        infoList()
                            .padding(.top, 20)
                        
                        Dividebar()
                        
                    }
                    
                    Spacer()
                    
                } //: VStack
               
            } //: Scroll
            
            
            VStack{
                CustomNavigatorBar()
                    .padding(.top, 50)
                
                Spacer()
                
                CustomRegularBtn(isRounded: true, text: "매칭 신청하기")
                    .padding(.bottom, 30)
            }
            
        } //: ZStack
        .ignoresSafeArea()
    }
}


// MARK: - NavigatorBar
private struct CustomNavigatorBar: View {
    @EnvironmentObject private var pathModel: PathModel
    
    fileprivate var body: some View {
        
        HStack{
            Button {
                pathModel.paths.append(.MatchingListView)
            } label: {
                Image("arrow")
            }

            Spacer()
            Button {
                //code
            } label: {
                Image("Option")
                    .padding(.horizontal)
            }
        }
    }
}



// MARK: - sportsTypeBadge
private struct sportsTypeBadge: View {
    
    fileprivate var body: some View {
        
        // 글자수 기준으로 flexible하도록
        Text("축구")
            .font(.pretendard(.Medium, size: 20))
            .foregroundColor(.white)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(Color.MainColor)
            .cornerRadius(30)
        
    }
}



// MARK: - dividebar
private struct Dividebar: View {
    
    fileprivate var body: some View {
        
        Rectangle()
            .fill(Color.customGray01)
            .frame(maxHeight: 1)
            .shadow(radius: 1, y: 2)
        
    }
}

// MARK: - infoList
private struct infoList: View {
    @EnvironmentObject private var matchingViewModel: MatchingViewModel
    
    fileprivate var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            
            VStack(alignment: . leading, spacing: 10) {
                Label("10/13 13:00 ~ 14:00", image: "Calendar")
                Label(matchingViewModel.location, image: "Location")
                Label("1/3", image: "Person")
            }
            .font(.pretendard(.Regular, size: 20))
            
            
            Text("뚝섬한강공원 가볍게 30분 정도 러닝할 사람 찾아요!\n다치지 않도록 운동복 입고 와주시면 좋습니다.\n성별, 나이 무관합니다!\n노쇼는 사양하겠습니다.")
                .font(.pretendard(.Regular, size: 16))
                .foregroundColor(.black)
            
            HStack {
                Spacer()
                
                Text("3시간전")
            }
        }
        .padding(.horizontal)
        
    }
}

// MARK: - PREVIEWS
struct Previews_MatchingDetailView: PreviewProvider {
    static var previews: some View {
        MatchingDetailView()
            .environmentObject(MatchingViewModel())
            .environmentObject(MatchingListViewModel())
            .environmentObject(PathModel())
    }
}