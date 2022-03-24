//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by iMac on 2022/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            BodyView()
                .navigationTitle("회원가입")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BodyView: View {
    
    let genderType = ["남성", "여성", "중성"]
    
    @State var name = ""
    @State var bornIn = 0
    @State var gender = 0
    
    var resultScript: String {
        if(name.isEmpty) {
            return "이름을 입력해주세요."
        } else {
            return "\(name)님은 성별이 \(genderType[gender])이며, 나이는 \(bornIn)입니다."
        }
    }
    
    
    var body: some View {
        Form {
            Section {
                TextField("이름을 입력해주세요", text: $name)
                    .keyboardType(.default)
            }
            Section(header: Text("생년월일")) {
                Picker("출생년도", selection: $bornIn) {
                    ForEach(1900 ..< 2019) {
                        Text("\(String($0))년생")
                    }
                }
            }
            Section(header: Text("성별")) {
                Picker("성별", selection: $gender) {
                    ForEach(0..<genderType.count) {
                        Text("\(self.genderType[$0])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            Section(header: Text("결과")) {
                Text("\(resultScript)")
            }
        }
        
    }
}
