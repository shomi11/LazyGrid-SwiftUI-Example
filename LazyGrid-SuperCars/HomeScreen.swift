//
//  HomeScreen.swift
//  LazyGrid-SuperCars
//
//  Created by Milos Malovic on 15.5.21..
//

import SwiftUI

struct HomeScreen: View {
    
    let cars = Bundle.main.decode([Car].self, from: "cars.json")
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(cars, id: \.name) { car in
                        HStack(alignment: .center, spacing: 16) {
                            Image(car.name)
                            Text(car.name)
                        }
                    }
                }
                .padding()
            }.navigationTitle("Super cars")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
