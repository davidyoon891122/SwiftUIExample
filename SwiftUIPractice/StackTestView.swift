//
//  StackTestView.swift
//  SwiftUIPractice
//
//  Created by iMac on 2022/03/25.
//

import SwiftUI

struct StackTestView: View {
    var body: some View {
        ClockShapeView()
    }
}

struct StackTestView_Previews: PreviewProvider {
    static var previews: some View {
        StackTestView()
    }
}

struct ClockShapeView: View {
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple]), center: .center)
                .ignoresSafeArea(.all)
            HStack {
                VStack {
                    Text("11시")
                    Spacer()
                    Text("9시")
                    Spacer()
                    Text("7시")
                }
                Spacer()
                VStack {
                    Text("12시")
                    Spacer()
                    Text("중앙")
                    Spacer()
                    Text("6시")
                }
                Spacer()
                VStack {
                    Text("1시")
                    Spacer()
                    Text("3시")
                    Spacer()
                    Text("5시")
                }
            }
            
        }
    }
}


// 뷰를 겹쳐서 표현할때 사용 ZStack
struct ZStackView: View {
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: 310, endRadius: 100)
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .blue]), center: .center)
            Color.red.frame(width: 300, height: 300)
            Color.blue.frame(width: 200, height: 200)
        }
    }
}

struct VStackWithSpacerView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            Text("Top")
            Spacer().frame(height: 5.0)
            Text("Middle")
            Spacer().frame(height: 5.0)
            Text("Bottom")
        }
        .background(Color.red)
    }
}
