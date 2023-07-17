//
//  FirstView.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import SwiftUI

struct FirstView: View {
    @ObservedObject  var viewModel: FirstViewModel
    var body: some View {
        VStack {
            Text("First Detail")
            
            TextField("name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("email", text: $viewModel.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView(viewModel: FirstViewModel())
    }
}
