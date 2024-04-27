//
//  MapView.swift
//  S7-ChurivantiÍ
//
//  Created by Mac19 on 27/04/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -12.0440722, longitude: -76.9534547),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.3)
        )
    }
}

#Preview {
    MapView()
}
