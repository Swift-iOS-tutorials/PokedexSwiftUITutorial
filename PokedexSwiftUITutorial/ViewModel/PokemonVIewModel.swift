//
//  PokemonVIewModel.swift
//  PokedexSwiftUITutorial
//
//  Created by Dennis Shar on 05/10/2022.
//

import SwiftUI

class PokemonVIewModel: ObservableObject {
    
    init(){
        fetchPokemon()
    }
    
    @Published var pokemon = [Pokemon]()
    
    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon () {
        guard let url = URL(string: baseURL) else {return}
        URLSession.shared.dataTask(with: url) { (data, response, error)  in
            guard let data = data?.parseData(removeString: "null,") else {return}
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: data) else {return}
                    
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
    
    func backGroundColor(forType type: String) -> UIColor {
        switch type {
        case "fire": return .systemRed
        case "poison": return .systemGreen
        case "water": return .systemTeal
            
        case "electric": return .systemYellow
        case "psychic": return .systemPurple
        case "normal": return .systemOrange
            
        case "ground": return .systemGray
        case "flying": return .systemBlue
        case "fairy": return .systemPink
        default:
            return .systemIndigo
        }
    }
}

extension Data {
    func parseData (removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else {return nil}
        return data
    }
}
