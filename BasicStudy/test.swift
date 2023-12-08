//
//  Exception.swift
//  BasicStudy
//
//  Created by KYUCHEOL KIM on 12/8/23.
//

import SwiftUI

struct Exception: View {
    
    @State var inputNumber = ""
    @State var resultNumber: Float = 0
    
    var body: some View {
        VStack{
            TextField("나눌 숫자를 입력해 주세요", text: $inputNumber)
            Text("나눈 결과 숫자 : \(resultNumber)")
            Button(action: {
                
                do {
                    try resultNumber = devideTen(with: Float(inputNumber) ?? 1.0)
                } catch DividedError.dividedByZero {
                    print("divided by zero")
                    resultNumber = 0
                } catch {
                    print(error.localizedDescription)
                }
                
            }, label: {
                Text("나누기")
            })
        }
    }
    
    func devideTen(with inputNumber: Float) throws -> Float {
        var result: Float = 0
        if inputNumber == 0 {
            throw DividedError.dividedByZero
        } else {
            result = 10 / inputNumber
        }
        return result
    }
}

enum DividedError: Error {
    case dividedByZero
}

#Preview {
    Exception()
}
