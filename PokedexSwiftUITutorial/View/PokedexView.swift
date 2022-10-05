//
//  PokedexView.swift
//  PokedexSwiftUITutorial
//
//  Created by Dennis Shar on 05/10/2022.
//

import SwiftUI

struct PokedexView: View {
    
    @ObservedObject var viewModel = PokemonVIewModel()
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())] //it means that we will have 2 item per row
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16 ){
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCellView(pockemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokodex") // need to be placed inside the navigation componnent 
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
