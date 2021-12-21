//
//  MyViewModel.swift
//  SwiftUI_Tutorial_07
//
//  Created by SeongMinK on 2021/12/21.
//

import Foundation
import Combine

class MyViewModel: ObservableObject {
    @Published var appTitle: String = "빡코딩의 일상"
}
