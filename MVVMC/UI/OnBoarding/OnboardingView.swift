//
//  OnboardingView.swift
//  MVVMC
//
//  Created by Rohit Pradhan on 17/07/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var flowCompleted: () -> Void
    
    init(flowCompleted: @escaping () -> Void) {
        self.flowCompleted = flowCompleted
    }
    
    var body: some View {
        TabView {
            Image("cat")
                .scaledToFit()
            Image("dog")
                .scaledToFit()
            Button("Done") {
                flowCompleted()
            }

        }
        .background(Color.black)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(flowCompleted: {
            
        })
    }
}
