//
//  CityView.swift
//  GuideBook
//
//  Created by Sajad Thapa on 27/8/2023.
//

import SwiftUI

struct CityView: View {
    @State var cities = [City]()
    var dataService = DataService()
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false){
                
                
                VStack{
                    ForEach(cities) { city in
                        NavigationLink{
                            AtractionVIew(city: city)
                        }label: {
                            CardView(city: city)
                                .padding(.top
                                         ,20)

                        }
                        
                    }
                }
                .padding()
                
                
                
            }
            .ignoresSafeArea()
            .onAppear{
                cities = dataService.getFileData()
                                
            }
            
        }
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
