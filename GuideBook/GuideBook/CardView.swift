//
//  CardView.swift
//  GuideBook
//
//  Created by Sajad Thapa on 27/8/2023.
//

import SwiftUI

struct CardView: View {
    var city:City
    var body: some View {
        ZStack{
            
            Rectangle()
                .background {
                    Image(city.imageName)
                        .resizable()
                        .scaledToFill()
                }
                .foregroundColor(.clear)
                .cornerRadius(14)

            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack(alignment:.leading) {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                
                Text(city.summary)
                    .multilineTextAlignment(.leading)
                    
            }
            .padding()
            .foregroundColor(.white)

        }
        .frame(height: 400)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(city: City(name: "Tokyo", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "tokyo", attractions: [Attraction]()))
    }
}
