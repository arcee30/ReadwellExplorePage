//
//  BookshelfView.swift
//  ReadwellAlpha
//
//  Created by Aaliyah Sayed on 6/15/22.
//

import Foundation
import SwiftUI


struct BookshelfView: View {
//    @State private var showFavoritesOnly = false
//
//
//    var filteredBooks: [Book] {
//            booklist.filter { book in
//                (!showFavoritesOnly || book.isFavorite)
//            }
//        }
    var body: some View {
        
       
        
        NavigationView{
           
        
            VStack {
                ScrollView {
    VStack {
       
        Text("Bookshelf")
          .font(.largeTitle)
          .bold().frame(width: 430, height: 90, alignment: .center).padding([.top], 40.0)
          .background(Color.rgb(r: 29, g: 190, b: 150))
          .clipShape(Rectangle()).foregroundColor(.white)
        
        
        
        Text("View your library")
            .font(.title)
          frame(width: 430, height: 30, alignment: .center)
        
          .clipShape(Rectangle()).foregroundColor(.black)
        
    
              
        ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(booklist, id: \.id) { book in
                            BookCard(book: book)
                        }
                    }.padding().frame(height: 200)
        }
        .padding(.top)
    
        Text("Fantasy")
        .font(.title)
        .bold()
        .frame(alignment: .leading)

                
            
    ScrollView(.horizontal) {
                HStack(spacing: 15) {
                    ForEach(booklist.filter{$0.category == .fantasy}, id: \.id) { book in
                        BookCard(book: book)
                    }
                }.padding().frame( height: 200)
    }

            Text("adventure")
            .font(.title)
            .bold()
            .multilineTextAlignment(.leading)
            .frame(alignment: .leading)
            
                            
        ScrollView(.horizontal) {
                    HStack(spacing: 15) {
                        ForEach(booklist.filter{$0.category == .adventure}, id: \.id) { book in
                            BookCard(book: book)
                        }
                    }.padding().frame( height: 200)
                }
        
//        Text("Fantasy")
//        .font(.title)
//        .bold()
//        .frame(alignment: .leading)
//
//
//
//    ScrollView(.horizontal) {
//                HStack(spacing: 15) {
//                    ForEach(booklist.filter{$0.category == .mystery}, id: \.id) { book in
//                        BookCard(book: book)
//                    }
//                }.padding().frame( height: 200)
//    }
        
            
            Text("All Books")
            .font(.title)
            .bold()
            .multilineTextAlignment(.leading)

        VStack {
            ForEach(booklist, id: \.id) {
        book in TopBookCard(book: book)
             }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        

            }
        }
        
    }
      
            // title at the top
            .navigationBarTitle(" ", displayMode: .inline)
            .edgesIgnoringSafeArea(.top)
            
//            .toolbar{
//                ToolbarItem(placement: .navigationBarTrailing){
//                Button{
//                    print("Search for book")
//                }label: {
//            Label("Save", systemImage: "magnifyingglass")
//                }
//                }
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button{
//                        print("open menu")
//                    }label: {
//                Label("Menu", systemImage: "line.horizontal.3")
//                    }
//                }
//
//            }
                  
        }
}
}
            
            
       



struct BookshelfView_Previews: PreviewProvider {
    static var previews: some View {
        BookshelfView()
            .previewInterfaceOrientation(.portrait)
    }
}

