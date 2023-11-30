//
//  OnboardingPage.swift
//  TeamUP
//
//  Created by 박근경 on 2023/12/01.
//

import SwiftUI

struct OnboardingPage: View {
    let _imageName: [String] = ["OnboardingImage01", "OnboardingImage02", "OnboardingImage03"]
    let _title: [String] = ["새로운 매칭을 찾아요", "다양한 스포츠를 만나요", "지금 시작하세요!"]
    let _subtitle: [String] = ["원하는 경기에 참여하세요!", "축구, 야구, 농구, E-Sports 매칭을 개최해요!\n주요 종목 외의 경기도 개최할 수 있어요!", "팀업과 함께 경기를 시작해봐요!"]
    let _w: [CGFloat] = [329, 363, 395]
    let _h: [CGFloat] = [274, 242, 375]
    
    var body: some View {
        NavigationStack{
            VStack{
                GeometryReader { geo in
                    VStack {
                        TabView {
                            ForEach(0..<3, id: \.self) { index in
                                OnboardingView(imageName: _imageName[index],
                                               title: _title[index],
                                               subtitle: _subtitle[index],
                                               w:_w[index], h:_h[index])
                            }
                        }
                        .frame(width: geo.size.width, height: 600)
                        .tabViewStyle(PageTabViewStyle())
                        .onAppear{
                            setupAppearance()
                        }
                        
                        NavigationLink {
                            tmplogin() // 로그인 페이지
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("MainColor"))
                                    .frame(width: 338, height: 68)
                                    .shadow(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.25), radius: 10, y: 2)
                                
                                Text("시작하기")
                                    .font(.custom("Pretendard", size: 20))
                                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    .padding(.top, 10)
                }
            }
        }
    }
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
      }
        
}
struct OnboardingView: View {
    let imageName: String
    let title: String
    let subtitle: String
    let w: CGFloat
    let h: CGFloat
    var body: some View {
        VStack {
            Text(title)
                .font(.custom("Pretendard", size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
                
            Text(subtitle)
                .font(.custom("Pretendard", size: 18))
                .foregroundColor(.gray)
            Spacer()
            Image(imageName)
                .resizable()
                .frame(width: w, height: h)
                .font(.system(size: 100))
                .padding(.bottom, 20)
        }
        .frame(width: 550, height: 510)
    }
}
#Preview {
    OnboardingPage()
}
