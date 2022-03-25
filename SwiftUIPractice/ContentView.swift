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
            StackTestView()
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

