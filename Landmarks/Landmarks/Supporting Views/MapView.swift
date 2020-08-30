//
//  MapView.swift
//  Landmarks
//
//  Created by Wayne Dahlberg on 8/30/20.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  
  var coordinate: CLLocationCoordinate2D
  
  // MAKE
  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
  }
  
  // UPDATE
  func updateUIView(_ uiView: MKMapView, context: Context) {
    let span = MKCoordinateSpan(
      latitudeDelta: 2.0,
      longitudeDelta: 2.05)
    let region = MKCoordinateRegion(
      center: coordinate,
      span: span)
    uiView.setRegion(region, animated: true)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView(coordinate: landmarkData[0].locationCoordinate)
  }
}
