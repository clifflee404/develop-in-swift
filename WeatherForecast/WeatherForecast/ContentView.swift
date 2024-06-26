//
//  ContentView.swift
//  WeatherForecast
//
//  Created by lifeng on 2024/4/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
            DayForecast(day: "Wed", isRainy: false, high: 90, low: 40)
            DayForecast(day: "Thu", isRainy: false, high: 80, low: 40)
            DayForecast(day: "Fri", isRainy: false, high: 70, low: 40)
            
        }
        
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String{
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color{
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var tempColor: Color {
           if(high > 80){
               return Color.red
           }
           return Color.black
       }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(tempColor)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

