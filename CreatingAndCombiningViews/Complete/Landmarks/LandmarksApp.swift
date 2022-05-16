/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The top-level definition of the Landmarks app.
*/

import SwiftUI

//SwiftUI의 앱 생명주가는 app protocol을 따름
//@main은 앱의 entry point를 의미함
@main
struct LandmarksApp: App {
    //body: 한개 이상의 scene을 반환하는 프로퍼티
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
