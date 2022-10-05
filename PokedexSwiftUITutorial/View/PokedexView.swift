//
//  PokedexView.swift
//  PokedexSwiftUITutorial
//
//  Created by Dennis Shar on 05/10/2022.
//

import SwiftUI

struct PokedexView: View {
    
    @StateObject var viewModel = PokemonVIewModel()
    
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())] //it means that we will have 2 item per row
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: gridItems, spacing: 16 ){
                    ForEach(0..<151) { _ in
                        PokemonCellView(pockemon: MOCH_POKEMON[2])
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
