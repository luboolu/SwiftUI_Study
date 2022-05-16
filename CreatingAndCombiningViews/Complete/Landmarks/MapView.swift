/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view that presents a map.
*/

import SwiftUI
import MapKit

struct MapView: View {
    //@State: data의 source of truth를 만들어서 하나 이상의 뷰로부터 수정될 수 있게 함 -> @State로 선언된 변수의 값이 변할때 View를 다시 그려줌(업데이트)
    //@State와 private는 같이 사용하는 것을 권장하며, 외부에서 이 변수에 접근해서는 안됨
    //SwiftUI의 body는 get-only 프로퍼티!
    //그렇다면 뷰의 내용을 어떻게 수정해서 보여주는 것?
    //기존의 뷰에 추가하는 방식이 아니라 뷰를 새로 그려주는 방식을 택함
    //@State로 선언된 변수는 Heap 영역에 할당됨
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        //$: binding
        //binding을 통해 변수의 reference 값을 전달할 수 있음
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
