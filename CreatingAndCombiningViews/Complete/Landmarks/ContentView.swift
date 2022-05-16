/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

//SwiftUI에서 기본적으로 생성하는 구조체 중 첫번쨰
//View 프로토콜을 따르며 View의 콘텐츠와 레이아웃에 대해서 describe
//View의 body property가 변하면 preview 또한 업데이트 되어, 변경된 내용을 보여줌

//뷰의 레이아웃을 선언하는 곳은 view struct의 body

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Divider()
                
                Text("Turtle Rock")
                    .font(.largeTitle)
                HStack {
                    Text("Josua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.largeTitle)
                Text("Descriptive text goes here")
            }
            .padding()
            Spacer()
        }
    }
}

//SwiftUI에서 생성하는 구조체 중 두번쨰
//View의 preview를 선언
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
