//
//  sampleView.swift
//  ReadwellAlpha
//
//  Created by Aaliyah Sayed on 6/15/22.
// hello

import Foundation
import SwiftUI

struct sampleView: View {
    var body: some View {
   
        Text("readwell <3")
          .font(.largeTitle)
          .bold().frame(width: 430, height: 1000, alignment: .center).padding([.top], 0.0)
          .background(Color.rgb(r: 29, g: 190, b: 150))
          .clipShape(Rectangle()).foregroundColor(.white)
        
    }
}

struct sampleView5: View {
    var body: some View {
   
        Text("readwell <3")
          .font(.largeTitle)
          .bold().frame(width: 430, height: 1000, alignment: .center).padding([.top], 0.0)
          .background(Color.rgb(r: 209, g: 96, b: 151))
          .clipShape(Rectangle()).foregroundColor(.white)
        
    }
}


struct sampleView3: View {
    var body: some View {
   
        Text("readwell <3")
          .font(.largeTitle)
          .bold().frame(width: 430, height: 1000, alignment: .center).padding([.top], 0.0)
          .background(Color.rgb(r: 50, g: 137, b: 168))
          .clipShape(Rectangle()).foregroundColor(.white)
        
    }
}


struct sampleView4: View {
    var body: some View {
   
        Text("readwell <3")
          .font(.largeTitle)
          .bold().frame(width: 430, height: 1000, alignment: .center).padding([.top], 0.0)
          .background(Color.rgb(r: 255, g: 190, b: 95))
          .clipShape(Rectangle()).foregroundColor(.white)
        
    }
}




struct sampleView_Previews: PreviewProvider {
    static var previews: some View {
        sampleView()
    }
}


struct sampleView3_Previews: PreviewProvider {
    static var previews: some View {
        sampleView3()
    }
}
