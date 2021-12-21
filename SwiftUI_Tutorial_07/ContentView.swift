//
//  ContentView.swift
//  SwiftUI_Tutorial_07
//
//  Created by SeongMinK on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: MyViewModel
    @State var count = 0
    @State var appTitle: String = ""
    
    var body: some View {
        TabView {
            VStack {
                Text(appTitle)
                    .font(.system(size: 26))
                    .fontWeight(.bold)
                    .padding()
                Text("오늘도 빡코딩! count: \(count)")
                    .padding()
                Button(action: {
                    count += 1
                    viewModel.appTitle = "빡코딩의 일상 \(count)일 차"
                }, label: {
                    Text("카운트 업")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(12)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }
            .tabItem { Label("오늘도", systemImage: "pencil.circle") }
            
            BeforeSleepView(count: $count)
                .tabItem { Label("자기전에", systemImage: "folder.fill") }
            
            WeekendView(count: $count)
                .tabItem { Label("주말에도", systemImage: "paperplane.fill") }
        }
        .overlay(Text(appTitle).offset(y: -(UIScreen.main.bounds.height * 0.4)))
        .onReceive(viewModel.$appTitle, perform: { receivedAppTitle in
            print("ContentView receivedAppTitle:", receivedAppTitle)
            appTitle = receivedAppTitle
        })
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
