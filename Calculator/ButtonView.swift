//
//  ButtonView.swift
//  Calculator
//
//  Created by Humza Munir on 6/14/20.
//  Copyright © 2020 Humza Munir. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    @Binding var name:String
    @Binding var function:Bool
    @Binding var numOne: Double?
    @Binding var numTwo: Double?
    @Binding var oper: Character?
    @Binding var result: Double
    @Binding var currentNum:String
    @Binding var displayingResult:Bool
   
   
    var body: some View {
        VStack {
            Button(action: {
                if !self.function {
                    
                    if self.currentNum == "Calculator" || self.currentNum == "0" || self.displayingResult{
                        self.currentNum = ""
                        self.displayingResult = false
                    }
                    self.currentNum.append(Character(self.name))
                    
                    print(self.numOne)
                    print(self.numTwo)
                    print(self.oper)
     
                }
                else if self.name == "%" {
                    self.numOne = Double(self.currentNum)
                    self.result = self.numOne! / 100
                    print(self.result)
                    
                    self.currentNum = String(self.result)
                                      
                    self.displayingResult = true

                    self.numOne = nil
                    self.numTwo = nil
                    self.oper = nil
                }
                else if (self.name == "=" || self.name == "%")
                    && self.numOne != nil {
                    
                    self.displayingResult = true
                    
                    self.numTwo = Double(self.currentNum)
                    
                    if self.oper == "*" {
                        self.result = self.numOne! * self.numTwo!
                    }
                    else if self.oper == "/" {
                        self.result = self.numOne! / self.numTwo!
                    }
                    else if self.oper == "+" {
                        self.result = self.numOne! + self.numTwo!
                    }
                    else if self.oper == "-" {
                        self.result = self.numOne! + self.numTwo!
                    }
                    else if self.name == "%" {
                        self.result = self.numOne! / 100
                        print(self.result)
                    }
                                    
                    self.currentNum = String(self.result)
                   
                    self.numOne = nil
                    self.numTwo = nil
                    self.oper = nil
                    
                    print(self.numOne)
                    print(self.numTwo)
                    print(self.oper)

                }
                else {
                    
                    if self.numOne == nil {
                        self.numOne = Double(self.currentNum)
                        self.oper = Character(self.name)
                        self.currentNum = "0"
                   }
                    print(self.numOne)
                    print(self.numTwo)
                    print(self.oper)
                }
            }) {
                if !self.function {
                    Text("\(name)")
                   .padding()
                   .frame(width: 75, height: 75)
                   .font(.system(size: 30))
                   .background(Color.blue)
                   .foregroundColor(.white)
                   .font(.title)
                   .cornerRadius(75)
                }
                else {
                    Text("\(name)")
                    .padding()
                    .frame(width: 75, height: 75)
                    .font(.system(size: 30))
                    .background(Color.white)
                    .foregroundColor(.black)
                    .font(.title)
                    .cornerRadius(75)
                }
               
            }
        }
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(name: Binding.constant("+"), function: Binding.constant(true))
//    }
//}
