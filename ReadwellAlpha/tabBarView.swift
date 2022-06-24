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
                sampleView2()
                //PDFTextView(book: booklist[0])
            }
            .tag(1)
            .tabItem {
                Image("exploreIcon")
                    .resizable().aspectRatio(contentMode: .fit)
                Text("Explore")
            }

            NavigationView {
                //PDFTextView(book: booklist[0])
                sampleView(text: .constant(""))
                  }
           
                   .tag(2)
                    .tabItem {
                    Image("readIcon")
                            .resizable().aspectRatio(contentMode: .fit)
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
                sampleView2()
                  }
                   .tag(2)
                    .tabItem {
                    Image("accountIcon")
                            .resizable().aspectRatio(contentMode: .fit)
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
