//
//  tabBarView.swift
//  ReadwellAlpha
//
//  Created by Aaliyah Sayed on 6/15/22.
//

import Foundation
import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            NavigationView {
//                BookCard(book: )
                
                ContentView()
            }
            
            .tag(0)
            .tabItem {
                Image("homeIcon")
                    .resizable().aspectRatio(contentMode: .fit)
                Text("Home")
            }

            NavigationView {
                sampleView()
            }
            .tag(1)
            .tabItem {
                Image("exploreIcon")
                Text("Explore")
            }

            NavigationView {
                PDFTextView(book: booklist[0])
                  }
                   .tag(2)
                    .tabItem {
                    Image("readIcon")
                        Text("Read").foregroundColor(.white)
                }
            
//            NavigationView {
//                BookshelfView()
//                  }
//                   .tag(2)
//                    .tabItem {
//                    Image("bookshelfIcon")
//                    Text("Bookshelf")
//                }
            
            NavigationView {
                sampleView4()
                  }
                   .tag(2)
                    .tabItem {
                    Image("accountIcon")
                    Text("Account")
                }
        }
    }
}


struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
