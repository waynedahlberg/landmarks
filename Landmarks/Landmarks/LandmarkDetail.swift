//
//  ContentView.swift
//  Landmarks
//
//  Created by Wayne Dahlberg on 8/30/20.
//

import SwiftUI

struct LandmarkDetail: View {
  
  var landmark: Landmark
  
  var body: some View {
    VStack {
      MapView(coordinate: landmark.locationCoordinate)
        .edgesIgnoringSafeArea(.all)
        .frame(height:300)
      
      CircleImage(image: landmark.image)
        .frame(width: 250, height: 250)
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack(alignment: .top) {
          Text(landmark.park)
            .font(.subheadline)
          Spacer()
          Text(landmark.state)
            .font(.subheadline)
        }
      }
      .padding()
      
      Spacer()
    }
    .navigationBarTitle(Text(landmark.name), displayMode: .inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetail(landmark: landmarkData[0])
  }
}
