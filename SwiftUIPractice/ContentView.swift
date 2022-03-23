//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by iMac on 2022/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                FormView()
            }
            .navigationTitle("SwiftUI")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HeaderView: View {
    var body: some View {
        HStack {
            Button(action: {
                print("Tapped")
            }, label: {
                Image(systemName: "chevron.backward")
            })
            Spacer()
            Text("Swift UI Test!")
            Spacer()
            Button(action: {
                print("tapped option button!")
            }, label: {
                Image(systemName: "gearshape")
            })
        }.frame(maxWidth: .infinity, maxHeight: 50.0).padding([.leading, .trailing])
    }
}


struct BodyView: View {
    let data = Array(1...1000).map { "목록: \($0)"}
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { i in
                    Capsule()
                        .fill(Color.blue)
                        .frame(height: 50.0)
                    Text(i)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct FormView: View {
    @State var touchedCount = 0
    
    var body: some View {
        Form {
            Text("버튼을 클릭 한 횟수 \(touchedCount)")
            Button("Button") {
                touchedCount += 1
            }
        }
    }
}
