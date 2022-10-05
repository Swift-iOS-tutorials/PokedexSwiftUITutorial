//
//  Pokemon.swift
//  PokedexSwiftUITutorial
//
//  Created by Dennis Shar on 05/10/2022.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}

let MOCH_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "1", type: "posion"),
    .init(id: 1, name: "Uvysoar", imageUrl: "1", type: "posion"),
    .init(id: 2, name: "Venusar", imageUrl: "1", type: "posion"),
    .init(id: 3, name: "Charmaner", imageUrl: "1", type: "fire"),
    .init(id: 4, name: "Charmaneleon", imageUrl: "1", type: "fire"),
    .init(id: 5, name: "Charizard", imageUrl: "1", type: "fire"),
]
