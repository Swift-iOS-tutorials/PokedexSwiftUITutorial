//
//  PokemonCellView.swift
//  PokedexSwiftUITutorial
//
//  Created by Dennis Shar on 05/10/2022.
//

import SwiftUI
import Kingfisher

struct PokemonCellView: View {
    let pockemon: Pokemon
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text(pockemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 8)
                    .padding(.leading)
                
                HStack{
                    Text(pockemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    KFImage(URL(string: pockemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
        .shadow(color: .green, radius: 6, x: 0.0, y: 0.0)
    }
}

struct PokemonCellView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCellView(pockemon: MOCH_POKEMON[3])
    }
}
