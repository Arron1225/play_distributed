//
//  ContentView.swift
//  play_distributed
//
//  Created by 林冠杰 on 2024/3/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            
        }
        VStack() {
            //first person name
            @State var name:String=""
            @State var second_name:String=""
             Text("你的名字：")
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                TextField("",text: $name)
                    .padding(.all)
                    .border(Color(UIColor.separator))
                    .padding(.leading)
                    .padding(.trailing)
            //第二個人
            Text("綁定的人：")
                   .font(.title3)
                   .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
               TextField("",text: $second_name)
                   .padding(.all)
                   .border(Color(UIColor.separator))
                   .padding(.leading)
                   .padding(.trailing)
            
            //button design area
            HStack{
                Button {
                    print("cnacel")
                } label: {
                    Text("cancel")
                        .font(.system(size: 25))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(10)
                } 
                Button {
                    print("submit")
                } label: {
                    Text("submit")
                        .font(.system(size: 25))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()

                        .foregroundColor(.white)
                        .background(.green)
                        .cornerRadius(10)
                }
//                .buttonStyle(.bordered)
//                .background(Color.green)
            }
            .padding()
        }
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}
