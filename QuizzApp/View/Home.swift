//
//  Home.swift
//  QuizzApp
//
//  Created by badar on 17/12/20.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack {
            Text("Sahawelah")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(Color.blue.opacity(0.5))
            
            Text("Choose the way \nyou play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 8)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
    }
}
