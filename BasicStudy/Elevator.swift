//
//  Elevator.swift
//  BasicStudy
//
//  Created by KYUCHEOL KIM on 12/6/23.
//

import SwiftUI

struct Elevator: View {
    
    @State var elevatorStruct = ElevatorStruct()
    
    var body: some View {
        VStack(content: {
            Text("\(elevatorStruct.level) Floor")
            
            HStack(content: {
                Button(action: {
                    elevatorStruct.goDown()
                }, label: {
                    Text("lower Floor")
                })
                
                Button(action: {
                    elevatorStruct.goUp()
                }, label: {
                    Text("Upper Floor")
                })
            })
        })
    }
}

struct ElevatorStruct {
    var level: Int = 2
    
    mutating func goDown() {
       level = level - 1
    }
    
    mutating func goUp() {
        level = level + 1
    }
}

#Preview {
    Elevator()
}
