//
//  BookCard.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import SwiftUI

struct BookCard: View {
    var book: Book
    
    var body: some View {
        
        
            
        VStack {
            NavigationLink(destination: BookDetailView(book: book)){
                                               
                    
                ZStack(alignment: .topTrailing) {
                    Image(book.bookArtString).renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 150).cornerRadius(8)
                    .padding([.top], 40.0)
                    
                    
                    
                    
                    if book.isFavorite {
                        Image(systemName: "heart.fill")
                            .imageScale(.large)
                            .foregroundColor(Color.red)
                            .padding([.top, .leading], 20.0)
                            .padding([.trailing], -15)
 
                }
                }
 
            }

                VStack{
                    Text(book.name)
                        .font(.callout).bold()
                       
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        
//                        .padding(.bottom, -10.0)
                        .frame(width: 140, height: 50, alignment: .top)
                    
//                    Text(book.author)
//                        .font(.subheadline)
//                        .foregroundColor(.secondary)
                    

                        }
               
                .padding([.leading, .bottom, .trailing])
                
                
            
            Spacer()
            
}
        
        
        .frame(width: 150, height: 200)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
//        .shadow(radius: 0.1)
    }
    
    
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookCard(book: booklist[0])
                .previewLayout(.fixed(width: 200, height: 250))
            BookCard(book: booklist[1])
            .previewLayout(.fixed(width: 200, height: 250))
        }
    }
}

