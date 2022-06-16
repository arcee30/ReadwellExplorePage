//
//  categoryCard.swift
//  ReadwellAlpha
//
//  Created by Aaliyah Sayed on 6/16/22.
//

import Foundation
//
//  BookCard.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/3/22.
//

import SwiftUI

struct categoryCard: View {
//    var category: Category
    
    var body: some View {
        
        
            
        VStack {
//            NavigationLink(destination: CategoryView){
                                               
                    
                ZStack(alignment: .topTrailing) {
                    Image("hobbit").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 140, height: 150).cornerRadius(8)
                    .padding([.top], 40.0)
                    
                    
                    
                
                }
 
//            }

                VStack{
                    Text("category[0]")
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

struct categoryCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            categoryCard()
                .previewLayout(.fixed(width: 200, height: 250))
           
        }
    }
}

