//
//  CircleImage.swift
//  Landmarks
//
//  Created by Wayne Dahlberg on 8/30/20.
//

import SwiftUI

struct CircleImage: View {
  
  var image: Image
  
  var body: some View {
    image
      .resizable()
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.gray, lineWidth: 4))
      .shadow(radius: 10)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage(image: Image("delicate-arch"))
  }
}
