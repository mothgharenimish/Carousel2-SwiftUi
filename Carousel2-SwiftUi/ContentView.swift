//
//  ContentView.swift
//  Carousel2-SwiftUi
//
//  Created by Nimish Mothghare on 03/05/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.5)
                .ignoresSafeArea()
            ScrollView(.horizontal,showsIndicators: false) {
                HStack(spacing: 25) {
                    ForEach(0..<moviearray.count, id: \.self) { index in
                        
                        MoviesCard(movies: moviearray[index])
                            .scrollTransition { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 1)
                                    .scaleEffect(y: phase.isIdentity ? 1 : 0.7)
                            }
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(60, for: .automatic)
            .scrollTargetBehavior(.viewAligned)
        }
    }
}

#Preview {
    ContentView()
}
