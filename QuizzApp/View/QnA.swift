//
//  QnA.swift
//  QuizzApp
//
//  Created by badar on 17/12/20.
//

import SwiftUI

// Question n Answer View...
struct QnA: View {
    @Binding var correct : Int
    @Binding var wrong: Int
    
    var body: some View {
        
        // Top Progress View...
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
            
            Capsule()
                .fill(Color.gray.opacity(0.5))
                .frame(height: 6)
            
            Capsule()
                .fill(Color.green)
                .frame(width: 100, height: 6)
        })
        .padding()
        
        // Correct And Wrong Count...
        
        HStack {
            
            Label(
                title: { Text(correct == 0 ? "" : "\(correct)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                })
            
            Spacer()
            
            Label(
                title: { Text(wrong == 0 ? "" : "\(wrong)")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                },
                icon: { Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                })
        }
        .padding()
        
        Spacer(minLength: 0)
    }
}

