//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Wayne Dahlberg on 8/30/20.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarkData) { landmark in
        NavigationLink(
          destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationBarTitle(Text("Landmarks"))
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
