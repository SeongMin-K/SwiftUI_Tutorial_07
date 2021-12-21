//
//  BeforeSleepView.swift
//  SwiftUI_Tutorial_07
//
//  Created by SeongMinK on 2021/12/21.
//

import SwiftUI

struct BeforeSleepView: View {
    @EnvironmentObject var viewModel: MyViewModel
    @Binding var count: Int
    @State var title: String = ""
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 26))
                .fontWeight(.bold)
                .padding()
            Text("자기전에 빡코딩! count: \(count)")
                .padding()
            Button(action: {
                count += 1
                viewModel.appTitle = "빡코딩의 일상 \(count)일 차"
            }, label: {
                Text("카운트 업")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(12)
                    .background(Color.purple)
                    .cornerRadius(10)
            })
        }
        .onReceive(viewModel.$appTitle, perform: { receivedAppTitle in
            print("BeforeSleepView receivedAppTitle:", receivedAppTitle)
            title = receivedAppTitle
        })
    }
}

//struct BeforeSleepView_Previews: PreviewProvider {
//    static var previews: some View {
//        BeforeSleepView()
//    }
//}
