//
//  ContentView.swift
//  SwiftUIMacOSCalculator
//
//  Created by Angelos Staboulis on 30/11/24.
//

import SwiftUI

struct ContentView: View {
    @State var txtReadout:String
    @State var formula:String
    @State var parser:Parser
    @State var result:Int
    var body: some View {
        ZStack{
            VStack {
                HStack{
                    Text("Enter your formula").frame(width:100,height:65,alignment: .leading).foregroundStyle(.white)
                    TextField("Enter your formula", text: $formula).frame(width:300,height:65,alignment: .trailing)
                }
                HStack{
                    Button {
                        let expressionNew = formula.components(separatedBy: ",")
                        result = parser.evaluateRPN(tokens: expressionNew)
                    } label: {
                        Text("Calculate your formula")
                    }
                    
                }
                HStack{
                    Text("Result").frame(width:100,height:65,alignment: .leading).foregroundStyle(.white)
                    Text(String(describing:result)).frame(width:300,height:65,alignment: .trailing)
                }
            }.navigationTitle(Text("Calculator"))
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
        }
        
    }
}

#Preview {
    ContentView(txtReadout: "", formula: "", parser:.init(), result: 0)
}


