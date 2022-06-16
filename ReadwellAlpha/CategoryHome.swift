
//  CategoryHome.swift
//  ReadwellAlpha
//
//  Created by Ananya Grover on 1/5/22.


import SwiftUI

struct CategoryHome: View {
    var book: Book
    var body: some View {
        
        
//         category buttons for explore page
                
                HStack(alignment: .center) {
                    Button("Fantasy") {
        
        
                    } .foregroundColor(.white)
                        .padding()
                        .background(Color.rgb(r: 99, g: 190, b: 150))
                        .cornerRadius(8)
        
                    Button("Adventure") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.foregroundColor(.white)
                        .padding()
                        .background(Color.rgb(r: 99, g: 190, b: 150))
                        .cornerRadius(8)
        
                    Button("Fairytales") {
        
                    }.foregroundColor(.white)
                        .padding()
                        .background(Color.rgb(r: 99, g: 190, b: 150))
                        .cornerRadius(8)
        
                }
        
        
        
        
        
//        NavigationView{
//
//            }
                
        }
    }


struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome(book: booklist[1])
    }
}
