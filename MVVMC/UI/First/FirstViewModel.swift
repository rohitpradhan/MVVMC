//
//  FirstViewModel.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import Foundation

class FirstViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var email: String = ""
}
