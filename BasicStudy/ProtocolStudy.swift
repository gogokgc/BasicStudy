//
//  ProtocolStudy.swift
//  BasicStudy
//
//  Created by KYUCHEOL KIM on 12/8/23.
//

import SwiftUI

protocol Driveable {
    func speedDown(with speed: Int) -> Int
}

struct KIA: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("slow down KIA")
        return speed - 5
    }
}

struct Hyundai: Driveable {
    func speedDown(with speed: Int) -> Int {
        print("slow down Hyundai")
        return speed - 9
    }
}

struct ProtocolStudy: View {
    
    var myCar: KIA = KIA()
    var broCar: Hyundai = Hyundai()
    let cars: [Driveable] = [KIA(), Hyundai()]
    
    @State var speed: Int = 10
    var body: some View {
        VStack{
            Text("speed : \(speed)")
            
            Button(action: {
                speed = broCar.speedDown(with: speed)
                cars.randomElement()?.speedDown(with: speed)
            }, label: {
                Text("slow down!!")
            })
        }
    }
}

#Preview {
    ProtocolStudy()
}
