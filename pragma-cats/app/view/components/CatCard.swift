//
//  CatCard.swift
//  pragma-cats
//
//  Created by Andres Duque on 6/12/22.
//

import SwiftUI
import Kingfisher

struct CatCard: View {
    
    public let data: Cat
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.white)

            VStack {
                Text(data.breedName)
                    .font(.title)
                    .foregroundColor(.black)

                KFImage(URL(string: data.imageUrl))
                    .resizable()
                    .frame(width: 200, height: 150, alignment: .center)
                    .scaledToFit()
                
                VStack {
                    Text("País de origen: \(data.origin)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding()
                    
                    Text("Inteligencia: \(data.intelligence.description)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .padding(20)
        .listRowBackground(Color.clear)
    }
}

struct CatCard_Previews: PreviewProvider {
    static var previews: some View {
        CatCard(data: Cat(breedName: "", origin: "", affectionLevel: 0, intelligence: 0, imageUrl: ""))
    }
}
