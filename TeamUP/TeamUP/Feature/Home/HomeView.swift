//
//  HomeView.swift
//  TeamUP
//
//  Created by 최하은 on 2023/12/31.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // 상단 바 컨텐츠
                HStack {
                    // 앱 타이틀
                    Image("Logo")
                        .resizable()
                        .frame(width: 32.39, height: 25.0)
                    Text("Team Up")
                        .font(.pretendard(.SemiBold, size: 20))
                    Spacer()
                    // 벨 아이콘
                    Image("Notification")
                        .resizable()
                        .frame(width: 40, height: 40)
                    // 메뉴 아이콘
                    Image("Menu")
                        .resizable()
                        .frame(width: 45, height: 45)
                }
                
                ZStack(alignment: .topLeading) { // ZStack을 사용하여 이미지가 텍스트를 겹칠 수 있도록 함
                    VStack(alignment: .leading) { // VStack을 사용하여 텍스트를 세로로 정렬
                        Spacer()
                        Text("최대글자수6님")
                            .font(.pretendard(.Bold, size: 32)) // 폰트 사이즈는 이미지에 맞게 조정
                            .foregroundColor(.white)
                        
                        Text("농구 경기 한 판,")
                            .font(.pretendard(.Medium, size: 32))
                            .foregroundColor(.white)
                        
                        Text("어떠세요?")
                            .font(.pretendard(.Medium, size: 32))
                            .foregroundColor(.white)
                        
                        Text("기분 좋은 오후 ! : )")
                            .font(.pretendard(.Light, size: 18))
                            .foregroundColor(.white)
                            .padding(.top, -7.0)
                            .opacity(0.70)
                    }
                    
                    Image("Icon") // Assets에 있는 이미지를 사용
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225, height: 177.54) // 이미지 사이즈 조정
                        .offset(x: 150, y: 15) // 이미지 위치 조정
                }
                .frame(height: 180) // 전체 ZStack의 크기 조정
                .padding(10)
                
                
                // 매칭 찾기 버튼
                NavigationLink {
                    MatchingListView()
                        .environmentObject(MatchingListViewModel())
                        .environmentObject(PathModel())
                } label: {
                    ZStack {
                        // 버튼의 배경색
                        Color.SubColor
                            .cornerRadius(20)
                        
                        // 텍스트와 로고를 포함하는 ZStack
                        VStack(alignment: .leading, spacing: 7) {
                            Text("매칭 찾기")
                                .font(.custom("Pretendard-Bold", size: 28))
                                .foregroundColor(.black)
                            Text("다른 사람들과의\n경기를 찾아보세요")
                                .font(.custom("Pretendard-Regular", size: 12))
                                .foregroundColor(Color.gray02)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .padding(.leading, 15)
                        .padding(.top, 15)
                        .frame(width: 335, height: 149, alignment: .topLeading)
                        
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 58.64, height: 44.51)
                            .padding(.trailing, 17)
                            .padding(.bottom, 15)
                            .frame(width: 335, height: 149, alignment: .bottomTrailing)
                    }
                    .frame(width: 340, height: 149) // 버튼의 전체 크기
                }
                .padding(10)
                
            }
            .padding()
            .background(Color.MainColor) // 배경색 설정
            .clipShape(RoundedCorner(radius: 30, corners: [.bottomLeft, .bottomRight]))
        }
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#Preview {
    HomeView()
}
