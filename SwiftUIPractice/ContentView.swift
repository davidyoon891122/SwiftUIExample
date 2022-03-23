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
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BodyView: View {
    @State var name = ""
    @State var bornIn = ""
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
            
        }
        
    }
}
