//
//  Pokemon.swift
//  Pokédex
//
//  Created by Justin Krysinski on 3/7/16.
//  Copyright © 2016 Justin Krysinski. All rights reserved.
//

import Foundation

class Pokemon {

    private var _name: String!
    private var _pokedexId: Int!

    var name: String {

        return _name
    }

    var pokedexId: Int {

        return _pokedexId
    }

    init(name: String, pokedexId: Int) {

        _name = name
        _pokedexId = pokedexId
    }
}