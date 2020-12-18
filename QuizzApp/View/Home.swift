//
//  Home.swift
//  QuizzApp
//
//  Created by badar on 17/12/20.
//

import SwiftUI

struct Home: View {
    
    @State var show = false
    @State var set = "Round_1"
    
    var body: some View {
        
        VStack {
            Text("QuizDonk")
                .font(.system(size: 38))
                .fontWeight(.heavy)
                .foregroundColor(Color.blue.opacity(1))
            
            Text("Choose the way \nyou play !!!")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundColor(.black)
                .padding(.top, 8)
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            
            // Level View...
            
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2),
                      spacing: 35, content: {
                
                ForEach(1...4, id: \.self) { index in
                    
                    VStack(spacing: 15) {
                        
                        Image("lv\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 150)
                        
                        Text("SwiftUI Quiz")
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundColor(.black)
                        
                        Text("Level \(index)")
                            .foregroundColor(.black)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    // Opening QnA view as sheet...
                    .onTapGesture(perform: {
                        set = "Round_\(index)"
                        show.toggle()
                    })
                }
            })
            .padding()
            
            Spacer(minLength: 0)
        }
        .background(Color.black.opacity(0.05).ignoresSafeArea())
        .sheet(isPresented: $show, content: {
            QnA()
        })
    }
}
