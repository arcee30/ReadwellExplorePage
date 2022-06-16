//
//  ContentView.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import SwiftUI


struct ContentView: View {
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
       
        Text("readwell")
          .font(.largeTitle)
          .bold().frame(width: 430, height: 90, alignment: .center).padding([.top], 40.0)
          .background(Color.rgb(r: 29, g: 190, b: 150))
          .clipShape(Rectangle()).foregroundColor(.white)
        
        
        
        Text("Welcome back, Aaliyah!")
        .font(.title).bold().padding()
        .frame(alignment: .leading)
        
        Text("This week's featured titles")
            .font(.title)
          .bold().frame(width: 430, height: 30, alignment: .center)
        
          .clipShape(Rectangle()).foregroundColor(.black)
        
        
// category buttons for explore page
        
//        HStack(alignment: .center) {
//            Button("Fantasy") {
//                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//            } .foregroundColor(.white)
//                .padding()
//                .background(Color.rgb(r: 99, g: 190, b: 150))
//                .cornerRadius(8)
//
//            Button("Adventure") {
//                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//            }.foregroundColor(.white)
//                .padding()
//                .background(Color.rgb(r: 99, g: 190, b: 150))
//                .cornerRadius(8)
//
//            Button("Fairytales") {
//
//            }.foregroundColor(.white)
//                .padding()
//                .background(Color.rgb(r: 99, g: 190, b: 150))
//                .cornerRadius(8)
//
//        }
              
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
            
            
       



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

