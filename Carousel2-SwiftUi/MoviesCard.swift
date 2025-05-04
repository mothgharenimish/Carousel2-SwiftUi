//
//  MoviesCard.swift
//  Carousel2-SwiftUi
//
//  Created by Nimish Mothghare on 03/05/25.
//

import SwiftUI

struct MoviesCard: View {
    
    let movies : CarouselModel
    var body: some View {
        
        Image(movies.movieImg!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width - 120, height: 500)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))


    }
}

#Preview {
    MoviesCard(movies: CarouselModel(movieImg: "mother_india-800100351-large"))
}
