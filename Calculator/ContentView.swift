//
//  ContentView.swift
//  Calculator
//
//  Created by Humza Munir on 6/14/20.
//  Copyright © 2020 Humza Munir. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numOne:Double? = nil
    @State private var numTwo:Double? = nil
    @State private var oper: Character? = nil
    @State private var currentNum: String = "Calculator"
    @State private var result:Double = 0
    @State var displayingResult:Bool = false
    
    var body: some View {
        ZStack {
            Color
                .black
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("\(currentNum)")
                .font(.system(size: 40))
                .fontWeight(.thin)
                .foregroundColor(Color.white)
                .padding(.top, 75)
                Spacer()
                
                VStack{
                    Spacer()
                    
                    HStack{
                        
                        ButtonView(name:Binding.constant("1"),
                           function: Binding.constant(false),
                           numOne: $numOne,
                           numTwo: $numTwo,
                           oper: $oper,
                           result: $result,
                           currentNum: $currentNum,
                           displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("2"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("3"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("+"),
                            function: Binding.constant(true),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                    
                    }.padding()
                    
                    HStack{
                        
                        ButtonView(name:Binding.constant("4"),
                           function: Binding.constant(false),
                           numOne: $numOne,
                           numTwo: $numTwo,
                           oper: $oper,
                           result: $result,
                           currentNum: $currentNum,
                           displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("5"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("6"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("-"),
                            function: Binding.constant(true),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                    
                    }.padding()
                    
                    HStack{
                        
                        ButtonView(name:Binding.constant("7"),
                           function: Binding.constant(false),
                           numOne: $numOne,
                           numTwo: $numTwo,
                           oper: $oper,
                           result: $result,
                           currentNum: $currentNum,
                           displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("8"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("9"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("*"),
                            function: Binding.constant(true),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                    
                    }.padding()
                    
                   HStack{
                        
                        ButtonView(name:Binding.constant("%"),
                           function: Binding.constant(true),
                           numOne: $numOne,
                           numTwo: $numTwo,
                           oper: $oper,
                           result: $result,
                           currentNum: $currentNum,
                           displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("0"),
                            function: Binding.constant(false),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("="),
                            function: Binding.constant(true),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                        
                        ButtonView(name: Binding.constant("/"),
                            function: Binding.constant(true),
                            numOne: $numOne,
                            numTwo: $numTwo,
                            oper: $oper,
                            result: $result,
                            currentNum: $currentNum,
                            displayingResult: $displayingResult)
                    
                    }.padding()
                    
                    HStack{
                        Button(action: {
                            self.currentNum = "Calculator"
                            self.numOne = nil
                            self.numTwo = nil
                            self.oper = nil
                            
                            print("Current Number Cleared")
                        }){
                            Text("Clear")
                              .padding()
                              .frame(width: 300, height: 75)
                              .font(.system(size: 30))
                              .background(Color.blue)
                              .foregroundColor(.white)
                              .font(.title)
                              .cornerRadius(75)
                        }
                    
                    }.padding()
                    
                    Spacer()
                    
                    Text("")
                       .font(.system(size: 40))
                       .fontWeight(.thin)
                       .foregroundColor(Color.white)
                       .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
