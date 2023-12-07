//
//  Sample.swift
//  BasicStudy
//
//  Created by KYUCHEOL KIM on 12/7/23.
//

import SwiftUI

struct Sample: View {
    
    let data = [
        Destination(derection: .north, 
                    food: "Carrot",
                    image: Image(systemName: "carrot.fill")),
        Destination(derection: .south, 
                    food: nil,
                    image: Image(systemName: "sunrise.fill")),
        Destination(derection: .south,
                    food: nil,
                    image: Image(systemName: "pencil")),
        Destination(derection: .south,
                    food: "Cake",
                    image: Image(systemName: "birthday.cake.fill"))
    ]
    
    @State var selectedDestination: Destination?
    
    var body: some View {
        VStack {
            selectedDestination?.image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            if let des = selectedDestination {
                Text(des.derection.rawValue)
                if let food = des.food {
                    Text(food)
                }
            }
            
            Button(action: {
                selectedDestination = data.randomElement()
            }, label: {
                Text("Change")
            })
        }
    }
}

struct Destination {
    let derection: Direction
    let food: String?
    let image: Image
}

enum Direction: String {
    case north = "N"
    case east = "E"
    case west = "W"
    case south = "S"
}

#Preview {
    Sample()
}
