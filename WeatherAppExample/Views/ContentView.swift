//
//  ContentView.swift
//  WeatherAppExample
//
//  Created by Виталий Таран on 19.01.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are:  \(location.longitude), \(location.latitude)")
                     } else {
                    if locationManager.isLoading {
                        ProgressView()
                    } else {
                        WelcomeView()
                            .environmentObject(LocationManager)
                    }
                }
            
        }
        .background(.blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
