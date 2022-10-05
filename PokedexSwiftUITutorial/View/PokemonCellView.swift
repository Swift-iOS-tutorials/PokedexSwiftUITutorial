//
//  PokemonCellView.swift
//  PokedexSwiftUITutorial
//
//  Created by Dennis Shar on 05/10/2022.
//

import SwiftUI

struct PokemonCellView: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Text("Bulbasaur")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top,4)
                    .padding(.leading)
                
                HStack{
                    Text("Poison")
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                }
            }
        }
        .background(Color.green)
        .cornerRadius(12)
    }
}

struct PokemonCellView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCellView()
    }
}
