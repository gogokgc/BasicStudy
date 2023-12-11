//
//  Generic.swift
//  BasicStudy
//
//  Created by KYUCHEOL KIM on 12/11/23.
//

import SwiftUI

struct Generic: View {
    
    @State var input = ""
    @State var myStack = MyStac<String>()
    
    var body: some View {
        VStack {
            TextField("Number", text: $input)
            Button {
                myStack.insertVlaue(input: input)
            } label: {
                Text("Save")
            }
            
            Button {
                myStack.showData()
            } label: {
                Text("Print")
            }

        }
    }
}

struct MyStac<T> { //T 제네릭
    var data: [T] = []
    
    mutating func insertVlaue(input: T) {
        data.append(input)
    }
    
    func showData() {
        data.forEach{ item in print(item) }
    }
}
#Preview {
    Generic()
}
